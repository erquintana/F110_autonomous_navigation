// Generated by gencpp from file neo_srvs/RelayBoardSetRelayRequest.msg
// DO NOT EDIT!


#ifndef NEO_SRVS_MESSAGE_RELAYBOARDSETRELAYREQUEST_H
#define NEO_SRVS_MESSAGE_RELAYBOARDSETRELAYREQUEST_H


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
struct RelayBoardSetRelayRequest_
{
  typedef RelayBoardSetRelayRequest_<ContainerAllocator> Type;

  RelayBoardSetRelayRequest_()
    : id(0)
    , state(false)  {
    }
  RelayBoardSetRelayRequest_(const ContainerAllocator& _alloc)
    : id(0)
    , state(false)  {
  (void)_alloc;
    }



   typedef int16_t _id_type;
  _id_type id;

   typedef uint8_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RelayBoardSetRelayRequest_

typedef ::neo_srvs::RelayBoardSetRelayRequest_<std::allocator<void> > RelayBoardSetRelayRequest;

typedef boost::shared_ptr< ::neo_srvs::RelayBoardSetRelayRequest > RelayBoardSetRelayRequestPtr;
typedef boost::shared_ptr< ::neo_srvs::RelayBoardSetRelayRequest const> RelayBoardSetRelayRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator1> & lhs, const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator1> & lhs, const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace neo_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e25f6daf797d0eb407ec62e4ec67ee8";
  }

  static const char* value(const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e25f6daf797d0ebULL;
  static const uint64_t static_value2 = 0x407ec62e4ec67ee8ULL;
};

template<class ContainerAllocator>
struct DataType< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "neo_srvs/RelayBoardSetRelayRequest";
  }

  static const char* value(const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 id\n"
"bool state\n"
;
  }

  static const char* value(const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelayBoardSetRelayRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::neo_srvs::RelayBoardSetRelayRequest_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int16_t>::stream(s, indent + "  ", v.id);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEO_SRVS_MESSAGE_RELAYBOARDSETRELAYREQUEST_H
