// Generated by gencpp from file uuv_control_msgs/SetSMControllerParamsResponse.msg
// DO NOT EDIT!


#ifndef UUV_CONTROL_MSGS_MESSAGE_SETSMCONTROLLERPARAMSRESPONSE_H
#define UUV_CONTROL_MSGS_MESSAGE_SETSMCONTROLLERPARAMSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uuv_control_msgs
{
template <class ContainerAllocator>
struct SetSMControllerParamsResponse_
{
  typedef SetSMControllerParamsResponse_<ContainerAllocator> Type;

  SetSMControllerParamsResponse_()
    : success(false)  {
    }
  SetSMControllerParamsResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetSMControllerParamsResponse_

typedef ::uuv_control_msgs::SetSMControllerParamsResponse_<std::allocator<void> > SetSMControllerParamsResponse;

typedef boost::shared_ptr< ::uuv_control_msgs::SetSMControllerParamsResponse > SetSMControllerParamsResponsePtr;
typedef boost::shared_ptr< ::uuv_control_msgs::SetSMControllerParamsResponse const> SetSMControllerParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_control_msgs/SetSMControllerParamsResponse";
  }

  static const char* value(const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSMControllerParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_control_msgs::SetSMControllerParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_CONTROL_MSGS_MESSAGE_SETSMCONTROLLERPARAMSRESPONSE_H
