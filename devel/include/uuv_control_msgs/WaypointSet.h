// Generated by gencpp from file uuv_control_msgs/WaypointSet.msg
// DO NOT EDIT!


#ifndef UUV_CONTROL_MSGS_MESSAGE_WAYPOINTSET_H
#define UUV_CONTROL_MSGS_MESSAGE_WAYPOINTSET_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/Time.h>
#include <uuv_control_msgs/Waypoint.h>

namespace uuv_control_msgs
{
template <class ContainerAllocator>
struct WaypointSet_
{
  typedef WaypointSet_<ContainerAllocator> Type;

  WaypointSet_()
    : header()
    , start_time()
    , waypoints()  {
    }
  WaypointSet_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , start_time(_alloc)
    , waypoints(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Time_<ContainerAllocator>  _start_time_type;
  _start_time_type start_time;

   typedef std::vector< ::uuv_control_msgs::Waypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::uuv_control_msgs::Waypoint_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;





  typedef boost::shared_ptr< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> const> ConstPtr;

}; // struct WaypointSet_

typedef ::uuv_control_msgs::WaypointSet_<std::allocator<void> > WaypointSet;

typedef boost::shared_ptr< ::uuv_control_msgs::WaypointSet > WaypointSetPtr;
typedef boost::shared_ptr< ::uuv_control_msgs::WaypointSet const> WaypointSetConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_control_msgs::WaypointSet_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_control_msgs::WaypointSet_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::WaypointSet_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.start_time == rhs.start_time &&
    lhs.waypoints == rhs.waypoints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_control_msgs::WaypointSet_<ContainerAllocator1> & lhs, const ::uuv_control_msgs::WaypointSet_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a946aaa8d17e35fe5a52e4f7ac482b5d";
  }

  static const char* value(const ::uuv_control_msgs::WaypointSet_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa946aaa8d17e35feULL;
  static const uint64_t static_value2 = 0x5a52e4f7ac482b5dULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_control_msgs/WaypointSet";
  }

  static const char* value(const ::uuv_control_msgs::WaypointSet_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
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
"std_msgs/Time start_time\n"
"uuv_control_msgs/Waypoint[] waypoints\n"
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
"MSG: std_msgs/Time\n"
"time data\n"
"\n"
"================================================================================\n"
"MSG: uuv_control_msgs/Waypoint\n"
"# Copyright (c) 2016 The UUV Simulator Authors.\n"
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
"geometry_msgs/Point point\n"
"float64 max_forward_speed\n"
"float64 heading_offset\n"
"bool use_fixed_heading\n"
"float64 radius_of_acceptance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::uuv_control_msgs::WaypointSet_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.start_time);
      stream.next(m.waypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WaypointSet_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_control_msgs::WaypointSet_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_control_msgs::WaypointSet_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "start_time: ";
    s << std::endl;
    Printer< ::std_msgs::Time_<ContainerAllocator> >::stream(s, indent + "  ", v.start_time);
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::uuv_control_msgs::Waypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_CONTROL_MSGS_MESSAGE_WAYPOINTSET_H
