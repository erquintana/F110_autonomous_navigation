// Generated by gencpp from file neo_msgs/USBoardV2.msg
// DO NOT EDIT!


#ifndef NEO_MSGS_MESSAGE_USBOARDV2_H
#define NEO_MSGS_MESSAGE_USBOARDV2_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace neo_msgs
{
template <class ContainerAllocator>
struct USBoardV2_
{
  typedef USBoardV2_<ContainerAllocator> Type;

  USBoardV2_()
    : header()
    , sensor()
    , analog()
    , active()  {
      sensor.assign(0.0);

      analog.assign(0);

      active.assign(false);
  }
  USBoardV2_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sensor()
    , analog()
    , active()  {
  (void)_alloc;
      sensor.assign(0.0);

      analog.assign(0);

      active.assign(false);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<float, 16>  _sensor_type;
  _sensor_type sensor;

   typedef boost::array<int16_t, 4>  _analog_type;
  _analog_type analog;

   typedef boost::array<uint8_t, 16>  _active_type;
  _active_type active;





  typedef boost::shared_ptr< ::neo_msgs::USBoardV2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::neo_msgs::USBoardV2_<ContainerAllocator> const> ConstPtr;

}; // struct USBoardV2_

typedef ::neo_msgs::USBoardV2_<std::allocator<void> > USBoardV2;

typedef boost::shared_ptr< ::neo_msgs::USBoardV2 > USBoardV2Ptr;
typedef boost::shared_ptr< ::neo_msgs::USBoardV2 const> USBoardV2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::neo_msgs::USBoardV2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::neo_msgs::USBoardV2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::neo_msgs::USBoardV2_<ContainerAllocator1> & lhs, const ::neo_msgs::USBoardV2_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.sensor == rhs.sensor &&
    lhs.analog == rhs.analog &&
    lhs.active == rhs.active;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::neo_msgs::USBoardV2_<ContainerAllocator1> & lhs, const ::neo_msgs::USBoardV2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace neo_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::neo_msgs::USBoardV2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::neo_msgs::USBoardV2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_msgs::USBoardV2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_msgs::USBoardV2_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_msgs::USBoardV2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_msgs::USBoardV2_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::neo_msgs::USBoardV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "44b18fcbad7e40606fe1cb1fd9a06b3a";
  }

  static const char* value(const ::neo_msgs::USBoardV2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x44b18fcbad7e4060ULL;
  static const uint64_t static_value2 = 0x6fe1cb1fd9a06b3aULL;
};

template<class ContainerAllocator>
struct DataType< ::neo_msgs::USBoardV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "neo_msgs/USBoardV2";
  }

  static const char* value(const ::neo_msgs::USBoardV2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::neo_msgs::USBoardV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message holds all data available from Neobotix USBoard\n"
"\n"
"std_msgs/Header header\n"
"\n"
"float32[16] sensor 	#sensor measurement\n"
"int16[4] analog 	#analogue input\n"
"bool[16] active  	#active\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::neo_msgs::USBoardV2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::neo_msgs::USBoardV2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sensor);
      stream.next(m.analog);
      stream.next(m.active);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct USBoardV2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::neo_msgs::USBoardV2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::neo_msgs::USBoardV2_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sensor[]" << std::endl;
    for (size_t i = 0; i < v.sensor.size(); ++i)
    {
      s << indent << "  sensor[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.sensor[i]);
    }
    s << indent << "analog[]" << std::endl;
    for (size_t i = 0; i < v.analog.size(); ++i)
    {
      s << indent << "  analog[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.analog[i]);
    }
    s << indent << "active[]" << std::endl;
    for (size_t i = 0; i < v.active.size(); ++i)
    {
      s << indent << "  active[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.active[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEO_MSGS_MESSAGE_USBOARDV2_H
