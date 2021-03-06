// Generated by gencpp from file ros_services/SonarValueResponse.msg
// DO NOT EDIT!


#ifndef ROS_SERVICES_MESSAGE_SONARVALUERESPONSE_H
#define ROS_SERVICES_MESSAGE_SONARVALUERESPONSE_H


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
struct SonarValueResponse_
{
  typedef SonarValueResponse_<ContainerAllocator> Type;

  SonarValueResponse_()
    : current_angle_min_s(0.0)
    , current_angle_max_s(0.0)
    , current_angle_increment_s(0.0)
    , current_time_increment_s(0.0)
    , current_scan_time_s(0.0)
    , current_range_min_s(0.0)
    , current_range_max_s(0.0)
    , success(false)  {
    }
  SonarValueResponse_(const ContainerAllocator& _alloc)
    : current_angle_min_s(0.0)
    , current_angle_max_s(0.0)
    , current_angle_increment_s(0.0)
    , current_time_increment_s(0.0)
    , current_scan_time_s(0.0)
    , current_range_min_s(0.0)
    , current_range_max_s(0.0)
    , success(false)  {
  (void)_alloc;
    }



   typedef float _current_angle_min_s_type;
  _current_angle_min_s_type current_angle_min_s;

   typedef float _current_angle_max_s_type;
  _current_angle_max_s_type current_angle_max_s;

   typedef float _current_angle_increment_s_type;
  _current_angle_increment_s_type current_angle_increment_s;

   typedef float _current_time_increment_s_type;
  _current_time_increment_s_type current_time_increment_s;

   typedef float _current_scan_time_s_type;
  _current_scan_time_s_type current_scan_time_s;

   typedef float _current_range_min_s_type;
  _current_range_min_s_type current_range_min_s;

   typedef float _current_range_max_s_type;
  _current_range_max_s_type current_range_max_s;

   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::ros_services::SonarValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_services::SonarValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SonarValueResponse_

typedef ::ros_services::SonarValueResponse_<std::allocator<void> > SonarValueResponse;

typedef boost::shared_ptr< ::ros_services::SonarValueResponse > SonarValueResponsePtr;
typedef boost::shared_ptr< ::ros_services::SonarValueResponse const> SonarValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_services::SonarValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_services::SonarValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_services::SonarValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::SonarValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current_angle_min_s == rhs.current_angle_min_s &&
    lhs.current_angle_max_s == rhs.current_angle_max_s &&
    lhs.current_angle_increment_s == rhs.current_angle_increment_s &&
    lhs.current_time_increment_s == rhs.current_time_increment_s &&
    lhs.current_scan_time_s == rhs.current_scan_time_s &&
    lhs.current_range_min_s == rhs.current_range_min_s &&
    lhs.current_range_max_s == rhs.current_range_max_s &&
    lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_services::SonarValueResponse_<ContainerAllocator1> & lhs, const ::ros_services::SonarValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_services

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::SonarValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_services::SonarValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::SonarValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_services::SonarValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::SonarValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_services::SonarValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_services::SonarValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9dec25f4e12492855bbfccd77fc79e87";
  }

  static const char* value(const ::ros_services::SonarValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9dec25f4e1249285ULL;
  static const uint64_t static_value2 = 0x5bbfccd77fc79e87ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_services::SonarValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_services/SonarValueResponse";
  }

  static const char* value(const ::ros_services::SonarValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_services::SonarValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 current_angle_min_s\n"
"float32 current_angle_max_s\n"
"float32 current_angle_increment_s\n"
"float32 current_time_increment_s\n"
"float32 current_scan_time_s\n"
"float32 current_range_min_s\n"
"float32 current_range_max_s\n"
"bool success\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::ros_services::SonarValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_services::SonarValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_angle_min_s);
      stream.next(m.current_angle_max_s);
      stream.next(m.current_angle_increment_s);
      stream.next(m.current_time_increment_s);
      stream.next(m.current_scan_time_s);
      stream.next(m.current_range_min_s);
      stream.next(m.current_range_max_s);
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SonarValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_services::SonarValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_services::SonarValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "current_angle_min_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_angle_min_s);
    s << indent << "current_angle_max_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_angle_max_s);
    s << indent << "current_angle_increment_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_angle_increment_s);
    s << indent << "current_time_increment_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_time_increment_s);
    s << indent << "current_scan_time_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_scan_time_s);
    s << indent << "current_range_min_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_range_min_s);
    s << indent << "current_range_max_s: ";
    Printer<float>::stream(s, indent + "  ", v.current_range_max_s);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SERVICES_MESSAGE_SONARVALUERESPONSE_H
