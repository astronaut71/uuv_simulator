// Generated by gencpp from file uuv_world_ros_plugins_msgs/SetCurrentDirectionRequest.msg
// DO NOT EDIT!


#ifndef UUV_WORLD_ROS_PLUGINS_MSGS_MESSAGE_SETCURRENTDIRECTIONREQUEST_H
#define UUV_WORLD_ROS_PLUGINS_MSGS_MESSAGE_SETCURRENTDIRECTIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uuv_world_ros_plugins_msgs
{
template <class ContainerAllocator>
struct SetCurrentDirectionRequest_
{
  typedef SetCurrentDirectionRequest_<ContainerAllocator> Type;

  SetCurrentDirectionRequest_()
    : angle(0.0)  {
    }
  SetCurrentDirectionRequest_(const ContainerAllocator& _alloc)
    : angle(0.0)  {
  (void)_alloc;
    }



   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetCurrentDirectionRequest_

typedef ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<std::allocator<void> > SetCurrentDirectionRequest;

typedef boost::shared_ptr< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest > SetCurrentDirectionRequestPtr;
typedef boost::shared_ptr< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest const> SetCurrentDirectionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator1> & lhs, const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator1> & lhs, const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_world_ros_plugins_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4edb55038e2b888976a0c0c56935341c";
  }

  static const char* value(const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4edb55038e2b8889ULL;
  static const uint64_t static_value2 = 0x76a0c0c56935341cULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_world_ros_plugins_msgs/SetCurrentDirectionRequest";
  }

  static const char* value(const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
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
"float64 angle\n"
;
  }

  static const char* value(const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetCurrentDirectionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_world_ros_plugins_msgs::SetCurrentDirectionRequest_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_WORLD_ROS_PLUGINS_MSGS_MESSAGE_SETCURRENTDIRECTIONREQUEST_H
