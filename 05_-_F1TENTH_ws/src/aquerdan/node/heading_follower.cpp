#include <ros/ros.h>
#include <ros/console.h>
#include <ackermann_msgs/AckermannDriveStamped.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <math.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

#include "aquerdan/PID.hpp"

#define MANUAL 0


class HeadingFollower {
    private:
        ros::NodeHandle m_private_nh;
        ros::NodeHandle m_nh;
        ros::Subscriber m_cmd_vel_sub;
        ros::Subscriber m_manual_cmd_vel_sub;
        ros::Subscriber m_odom_sub;
        ros::Publisher m_drive_pub;

        std::string m_cmd_vel_sub_topic{"cmd_vel"};
        std::string m_manual_cmd_vel_sub_topic{"manual_cmd_vel"};
        std::string m_odom_sub_topic{"odom"};
        std::string m_drive_pub_topic{"drive"};
        
        PID m_angle_controller;
        double m_freq;
        double m_length_wb;

        // Max controller effort
        double m_max_angle_diff = 0.4189;
        double m_max_omega = M_PI;

        // State info
        nav_msgs::Odometry m_odom_k;
        geometry_msgs::Twist m_setpoint;
        double m_cmd_vel;
        double m_cmd_theta;

        // Pendientes
        double m_current_vel;
        double m_current_theta;
        double m_current_omega;

    public:
        HeadingFollower() {
            m_private_nh = ros::NodeHandle("~");
            m_nh = ros::NodeHandle();

            m_drive_pub = m_nh.advertise<ackermann_msgs::AckermannDriveStamped>(m_drive_pub_topic, 10);

            m_odom_sub = m_nh.subscribe(m_odom_sub_topic, 1, &HeadingFollower::OdomCallback, this);
            m_cmd_vel_sub = m_nh.subscribe(m_cmd_vel_sub_topic, 1, &HeadingFollower::CmdVelCallback, this);
            m_manual_cmd_vel_sub = m_nh.subscribe(m_manual_cmd_vel_sub_topic, 1, &HeadingFollower::ManualCmdVelCallback, this);

            double kp = m_private_nh.param("kp", 0.1);
            double ti = m_private_nh.param("ti", 1);
            double td = m_private_nh.param("td", 0);
            m_freq = m_private_nh.param("freq", 60);
            m_length_wb = m_private_nh.param("l_wb", 0.3302);

            // angle_controller(double Kp, double Ti, double Td, double Alfa, double Beta, double Ts)
            m_angle_controller = PID(kp, ti, td, 10.0, 1.0, 1.0/m_freq);

            InitStates();

            ROS_INFO("Node setup");
            if( ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Debug) ) {
                ros::console::notifyLoggerLevelsChanged();
            }
        }

        void InitStates() {

            // PID setup
            // Para controlar ponemos el setpoint en 0. Nuestra variable a controlar va
            // a ser la diferencia entre el angulo deseado y el actual.
            // Cuando se quiera cambiar de dirección, será como una perturbación.
            // La acción de control es una velocidad angular
            m_angle_controller.SetMaxEffort(-m_max_omega, m_max_omega);
            m_angle_controller.UpdateSetpoint(0);
            m_angle_controller.StepAntiWind(0);
            

            tf2::Quaternion q;
            q.setRPY(0, 0, 0);
            m_odom_k.pose.pose.orientation.w = q.getW(); 
            m_odom_k.pose.pose.orientation.x = q.getX(); 
            m_odom_k.pose.pose.orientation.y = q.getY(); 
            m_odom_k.pose.pose.orientation.z = q.getZ(); 
        }

        double AbsAngleDiff(double a1, double a2) {
            return atan2(sin(a1 - a2), cos(a1 - a2));
        }

        double AckermannGetDelta(double linear_speed, double desired_omega, double length_wb) {
            double delta = atan(desired_omega * length_wb / linear_speed);

            // Constrain delta within bounds;
            if (delta > m_max_angle_diff) {
                ROS_WARN_THROTTLE(1, "Contraining delta to upper limit, originally %.1f", delta*180/M_PI);
                delta = m_max_angle_diff;
            }
            if (delta < -m_max_angle_diff) {
                ROS_WARN_THROTTLE(1, "Contraining delta to lower limit, originally %.1f", delta*180/M_PI);
                delta = -m_max_angle_diff;
            }
            return delta;
        }

        double StepPid() {
            ROS_DEBUG_THROTTLE(1, "Commands -> Vel: %.2f, theta: %.2f", m_cmd_vel, m_cmd_theta*180/M_PI);

            ROS_DEBUG_THROTTLE(1, "Odom theta: %.2f", m_current_theta*180/M_PI);
            double angle_diff = AbsAngleDiff(m_current_theta, m_cmd_theta);

            ROS_DEBUG_THROTTLE(1, "Angle diff: %.2f", angle_diff*180/M_PI);
            return m_angle_controller.StepAntiWind(angle_diff);
        }

        void Run() {

            ROS_INFO("Running...");
            ros::Rate r(m_freq);
            while(ros::ok()) {

                // Recordar que la acción de control es una velocidad angular
                double effort = StepPid();
                double delta = AckermannGetDelta(m_current_vel, effort, m_length_wb);
                
                ROS_INFO_THROTTLE(1, "PID effort: %.3f", effort);
                ROS_INFO_THROTTLE(1, "delta: %.3f", delta);
                
                PublishDrive(delta, m_cmd_vel);

                ros::spinOnce();
                r.sleep();
            }
        }

        void OdomCallback(const nav_msgs::Odometry &msg) {
            m_odom_k = msg;
            // ROS_INFO_STREAM_THROTTLE(2, "Odometry msg received" << msg);

            // Save current theta
            tf2::Quaternion current_orientation;
            tf2::fromMsg(m_odom_k.pose.pose.orientation, current_orientation);
            tf2::Matrix3x3 m(current_orientation);
            double roll, pitch;
            m.getRPY(roll, pitch, m_current_theta);

            // Save current omega
            m_current_omega = msg.twist.twist.angular.z;

            // Save current speed
            m_current_vel = sqrt(pow(msg.twist.twist.linear.x, 2) + pow(msg.twist.twist.linear.y, 2));

            return;
        }

        void CmdVelCallback(const geometry_msgs::Twist &msg) {
            m_setpoint = msg;

            m_cmd_vel = sqrt(pow(msg.linear.x, 2) + pow(msg.linear.y, 2));
            m_cmd_theta = atan2(msg.linear.y, msg.linear.x);

            return;
        }

        void ManualCmdVelCallback(const geometry_msgs::Twist &msg) {
            m_setpoint = msg;
            // Save desired speed and angle
            m_cmd_vel = msg.linear.x;
            m_cmd_theta = msg.angular.z;
        }

        void PublishDrive(double delta, double speed) {
            ackermann_msgs::AckermannDriveStamped msg;
            msg.drive.steering_angle = delta;
            msg.drive.steering_angle_velocity = 0;
            msg.drive.jerk = 0;
            msg.drive.speed = speed;
            m_drive_pub.publish(msg);
        }

};

int main(int argc, char ** argv) {
    ros::init(argc, argv, "heading_follower");
    HeadingFollower follower;
    follower.Run();
    return 0;
}