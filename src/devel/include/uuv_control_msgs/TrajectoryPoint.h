// Generated by gencpp from file uuv_control_msgs/TrajectoryPoint.msg
// DO NOT EDIT!


#ifndef UUV_CONTROL_MSGS_MESSAGE_TRAJECTORYPOINT_H
#define UUV_CONTROL_MSGS_MESSAGE_TRAJECTORYPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Accel.h>

namespace uuv_control_msgs
{
template <class ContainerAllocator>
struct TrajectoryPoint_
{
  typedef TrajectoryPoint_<ContainerAllocator> Type;

  TrajectoryPoint_()
    : header()
    , pose()
    , velocity()
    , acceleration()  {
    }
  TrajectoryPoint_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pose(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Accel_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;





  typedef boost::shared_ptr< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryPoint_

typedef ::uuv_control_msgs::TrajectoryPoint_<std::allocator<void> > TrajectoryPoint;

typedef boost::shared_ptr< ::uuv_control_msgs::TrajectoryPoint > TrajectoryPointPtr;
typedef boost::shared_ptr< ::uuv_control_msgs::TrajectoryPoint const> TrajectoryPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "93e068582370cddd8d8a46dda0c2eaf2";
  }

  static const char* value(const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x93e068582370cdddULL;
  static const uint64_t static_value2 = 0x8d8a46dda0c2eaf2ULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_control_msgs/TrajectoryPoint";
  }

  static const char* value(const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Copyright (c) 2016 The UUV Simulator Authors.\n"
"# All rights reserved.\n"
"#\n"
"# Licensed under the Apache License, Version 2.0 (the \"License\");\n"
"# you may not use this file except in compliance with the License.\n"
"# You may obtain a copy of the License at\n"
"#\n"
"#     http://www.apache.org/licenses/LICENSE-2.0\n"
"#\n"
"# Unless required by applicable law or agreed to in writing, software\n"
"# distributed under the License is distributed on an \"AS IS\" BASIS,\n"
"# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"
"# See the License for the specific language governing permissions and\n"
"# limitations under the License.\n"
"\n"
"std_msgs/Header header\n"
"geometry_msgs/Pose  pose\n"
"geometry_msgs/Twist velocity\n"
"geometry_msgs/Accel acceleration\n"
"\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.acceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_control_msgs::TrajectoryPoint_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Accel_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_CONTROL_MSGS_MESSAGE_TRAJECTORYPOINT_H
