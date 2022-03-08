// Generated by gencpp from file ros_services/ImuValueResponse.msg
// DO NOT EDIT!


#ifndef ROS_SERVICES_MESSAGE_IMUVALUERESPONSE_H
#define ROS_SERVICES_MESSAGE_IMUVALUERESPONSE_H


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
struct ImuValueResponse_
{
  typedef ImuValueResponse_<ContainerAllocator> Type;

  ImuValueResponse_()
    : current_x_orientation_s(0.0)
    , current_y_orientation_s(0.0)
    , current_z_orientation_s(0.0)
    , current_w_orientation_s(0.0)
    , current_x_angular_velocity_s(0.0)
    , current_y_angular_velocity_s(0.0)
    , current_z_angular_velocity_s(0.0)
    , current_x_linear_acceleration_s(0.0)
    , current_y_linear_acceleration_s(0.0)
    , current_z_linear_acceleration_s(0.0)
    , success(false)  {
    }
  ImuValueResponse_(const ContainerAllocator& _alloc)
    : current_x_orientation_s(0.0)
    , current_y_orientation_s(0.0)
    , current_z_orientation_s(0.0)
    , current_w_orientation_s(0.0)
    , current_x_angular_velocity_s(0.0)
    , current_y_angular_velocity_s(0.0)
    , current_z_angular_velocity_s(0.0)
    , current_x_linear_acceleration_s(0.0)
    , current_y_linear_acceleration_s(0.0)
    , current_z_linear_acceleration_s(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef double _current_x_orientation_s_type;
  _current_x_orientation_s_type current_x_orientation_s;

   typedef double _current_y_orientation_s_type;
  _current_y_orientation_s_type current_y_orientation_s;

   typedef double _current_z_orientation_s_type;
  _current_z_orientation_s_type current_z_orientation_s;

   typedef double _current_w_orientation_s_type;
  _current_w_orientation_s_type current_w_orientation_s;

   typedef double _current_x_angular_velocity_s_type;
  _current_x_angular_velocity_s_type current_x_angular_velocity_s;

   typedef double _current_y_angular_velocity_s_type;
  _current_y_angular_velocity_s_type current_y_angular_velocity_s;

   typedef double _current_z_angular_velocity_s_type;
  _current_z_angular_velocity_s_type current_z_angular_velocity_s;

   typedef double _current_x_linear_acceleration_s_type;
  _current_x_linear_acceleration_s_type current_x_linear_acceleration_s;

   typedef double _current_y_linear_acceleration_s_type;
  _current_y_linear_acceleration_s_type current_y_linear_acceleration_s;

   typedef double _current_z_linear_acceleration_s_type;
  _current_z_linear_acceleration_s_type current_z_linear_acceleration_s;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::ros_services::ImuValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_services::ImuValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ImuValueResponse_

typedef ::ros_services::ImuValueResponse_<std::allocator<void> > ImuValueResponse;

typedef boost::shared_ptr< ::ros_services::ImuValueResponse > ImuValueResponsePtr;
typedef boost::shared_ptr< ::ros_services::ImuValueResponse const> ImuValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_services::ImuValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_services::ImuValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_services::ImuValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::ImuValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current_x_orientation_s == rhs.current_x_orientation_s &&
    lhs.current_y_orientation_s == rhs.current_y_orientation_s &&
    lhs.current_z_orientation_s == rhs.current_z_orientation_s &&
    lhs.current_w_orientation_s == rhs.current_w_orientation_s &&
    lhs.current_x_angular_velocity_s == rhs.current_x_angular_velocity_s &&
    lhs.current_y_angular_velocity_s == rhs.current_y_angular_velocity_s &&
    lhs.current_z_angular_velocity_s == rhs.current_z_angular_velocity_s &&
    lhs.current_x_linear_acceleration_s == rhs.current_x_linear_acceleration_s &&
    lhs.current_y_linear_acceleration_s == rhs.current_y_linear_acceleration_s &&
    lhs.current_z_linear_acceleration_s == rhs.current_z_linear_acceleration_s &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_services::ImuValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::ImuValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::ImuValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::ImuValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::ImuValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::ImuValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::ImuValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::ImuValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_services::ImuValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf57795100e7d925db9b4cb90363b047";
  }

  static const char* value(const ::ros_services::ImuValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf57795100e7d925ULL;
  static const uint64_t static_value2 = 0xdb9b4cb90363b047ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_services::ImuValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_services/ImuValueResponse";
  }

  static const char* value(const ::ros_services::ImuValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_services::ImuValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 current_x_orientation_s\n"
"float64 current_y_orientation_s\n"
"float64 current_z_orientation_s\n"
"float64 current_w_orientation_s\n"
"float64 current_x_angular_velocity_s\n"
"float64 current_y_angular_velocity_s\n"
"float64 current_z_angular_velocity_s\n"
"float64 current_x_linear_acceleration_s\n"
"float64 current_y_linear_acceleration_s\n"
"float64 current_z_linear_acceleration_s\n"
"bool success\n"
"\n"
"\n"
;
  }

  static const char* value(const ::ros_services::ImuValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_services::ImuValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_x_orientation_s);
      stream.next(m.current_y_orientation_s);
      stream.next(m.current_z_orientation_s);
      stream.next(m.current_w_orientation_s);
      stream.next(m.current_x_angular_velocity_s);
      stream.next(m.current_y_angular_velocity_s);
      stream.next(m.current_z_angular_velocity_s);
      stream.next(m.current_x_linear_acceleration_s);
      stream.next(m.current_y_linear_acceleration_s);
      stream.next(m.current_z_linear_acceleration_s);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImuValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_services::ImuValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_services::ImuValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "current_x_orientation_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_x_orientation_s);
    s << indent << "current_y_orientation_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_y_orientation_s);
    s << indent << "current_z_orientation_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_z_orientation_s);
    s << indent << "current_w_orientation_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_w_orientation_s);
    s << indent << "current_x_angular_velocity_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_x_angular_velocity_s);
    s << indent << "current_y_angular_velocity_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_y_angular_velocity_s);
    s << indent << "current_z_angular_velocity_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_z_angular_velocity_s);
    s << indent << "current_x_linear_acceleration_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_x_linear_acceleration_s);
    s << indent << "current_y_linear_acceleration_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_y_linear_acceleration_s);
    s << indent << "current_z_linear_acceleration_s: ";
    Printer<double>::stream(s, indent + "  ", v.current_z_linear_acceleration_s);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SERVICES_MESSAGE_IMUVALUERESPONSE_H