#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <geometry_msgs/Twist.h>
#include <math.h>

/**
 * This node publishes a desired heading and speed for a robot based on joy readings
 * 
 * Left analog stick controls the direction of movement, right analog
 * controls the speed
 **/
class HeadingTester {

    private:
        ros::NodeHandle private_nh;
        ros::NodeHandle nh;
        ros::Subscriber joy_sub;
        ros::Publisher cmd_vel_pub;

        std::string joy_sub_topic{"joy"};
        std::string cmd_vel_pub_topic{"manual_cmd_vel"};

        int joy_heading_y_axis, joy_heading_x_axis;
        int joy_speed_axis;

        double max_speed; // [m/s]

    public:

        HeadingTester() {
            private_nh = ros::NodeHandle("~");
            nh = ros::NodeHandle();

            private_nh.param("joy_heading_x_axis", joy_heading_x_axis, 0);
            private_nh.param("joy_heading_y_axis", joy_heading_y_axis, 1);
            private_nh.param("joy_speed_axis", joy_speed_axis, 4);
            private_nh.param("max_speed", max_speed, 7.0);

            cmd_vel_pub = nh.advertise<geometry_msgs::Twist>(cmd_vel_pub_topic, 10);
            joy_sub = nh.subscribe(joy_sub_topic, 1, &HeadingTester::JoyCallback, this);
        }

        void JoyCallback(const sensor_msgs::Joy &msg) {

            double x = -msg.axes[joy_heading_x_axis];
            double y = msg.axes[joy_heading_y_axis];

            double speed = msg.axes[joy_speed_axis]*max_speed;
            
            double theta = atan2(y, x);

            PublishCmdVel(speed, theta);
        }

        void PublishCmdVel(const double &speed , const double &theta) {


            geometry_msgs::Twist twist;
            twist.linear.x = speed;
            twist.linear.y = 0;
            twist.linear.z = 0;
            twist.angular.x = 0;
            twist. angular.y = 0;
            twist.angular.z = theta;
            

            cmd_vel_pub.publish(twist);
        }

};

int main(int argc, char **argv) {
    ros::init(argc, argv, "heading_tester");
    HeadingTester tester;
    ros::spin();
    return 0;
}