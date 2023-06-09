// Generated by gencpp from file neo_srvs/ActivateMotorsRequest.msg
// DO NOT EDIT!


#ifndef NEO_SRVS_MESSAGE_ACTIVATEMOTORSREQUEST_H
#define NEO_SRVS_MESSAGE_ACTIVATEMOTORSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace neo_srvs
{
template <class ContainerAllocator>
struct ActivateMotorsRequest_
{
  typedef ActivateMotorsRequest_<ContainerAllocator> Type;

  ActivateMotorsRequest_()
    {
    }
  ActivateMotorsRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ActivateMotorsRequest_

typedef ::neo_srvs::ActivateMotorsRequest_<std::allocator<void> > ActivateMotorsRequest;

typedef boost::shared_ptr< ::neo_srvs::ActivateMotorsRequest > ActivateMotorsRequestPtr;
typedef boost::shared_ptr< ::neo_srvs::ActivateMotorsRequest const> ActivateMotorsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace neo_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "neo_srvs/ActivateMotorsRequest";
  }

  static const char* value(const ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActivateMotorsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::neo_srvs::ActivateMotorsRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // NEO_SRVS_MESSAGE_ACTIVATEMOTORSREQUEST_H
