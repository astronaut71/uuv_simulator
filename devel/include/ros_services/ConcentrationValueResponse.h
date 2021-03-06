// Generated by gencpp from file ros_services/ConcentrationValueResponse.msg
// DO NOT EDIT!


#ifndef ROS_SERVICES_MESSAGE_CONCENTRATIONVALUERESPONSE_H
#define ROS_SERVICES_MESSAGE_CONCENTRATIONVALUERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_services
{
template <class ContainerAllocator>
struct ConcentrationValueResponse_
{
  typedef ConcentrationValueResponse_<ContainerAllocator> Type;

  ConcentrationValueResponse_()
    : current_concentration_s(0.0)
    , success(false)  {
    }
  ConcentrationValueResponse_(const ContainerAllocator& _alloc)
    : current_concentration_s(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef double _current_concentration_s_type;
  _current_concentration_s_type current_concentration_s;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ConcentrationValueResponse_

typedef ::ros_services::ConcentrationValueResponse_<std::allocator<void> > ConcentrationValueResponse;

typedef boost::shared_ptr< ::ros_services::ConcentrationValueResponse > ConcentrationValueResponsePtr;
typedef boost::shared_ptr< ::ros_services::ConcentrationValueResponse const> ConcentrationValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_services::ConcentrationValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_services::ConcentrationValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::ConcentrationValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current_concentration_s == rhs.current_concentration_s &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_services::ConcentrationValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::ConcentrationValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8576fdc4ee832da33d85d38827f6eccd";
  }

  static const char* value(const ::ros_services::ConcentrationValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8576fdc4ee832da3ULL;
  static const uint64_t static_value2 = 0x3d85d38827f6eccdULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_services/ConcentrationValueResponse";
  }

  static const char* value(const ::ros_services::ConcentrationValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 current_concentration_s\n"
"bool success\n"
"\n"
"\n"
;
  }

  static const char* value(const ::ros_services::ConcentrationValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_concentration_s);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConcentrationValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_services::ConcentrationValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_services::ConcentrationValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "current_concentration_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_concentration_s);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SERVICES_MESSAGE_CONCENTRATIONVALUERESPONSE_H
