// Generated by gencpp from file uuv_plume_msgs/SetPlumeConfigurationRequest.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATIONREQUEST_H
#define UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uuv_plume_msgs
{
template <class ContainerAllocator>
struct SetPlumeConfigurationRequest_
{
  typedef SetPlumeConfigurationRequest_<ContainerAllocator> Type;

  SetPlumeConfigurationRequest_()
    : n_points(0)
    , max_particles_per_iter(0)  {
    }
  SetPlumeConfigurationRequest_(const ContainerAllocator& _alloc)
    : n_points(0)
    , max_particles_per_iter(0)  {
  (void)_alloc;
    }



   typedef int32_t _n_points_type;
  _n_points_type n_points;

   typedef int32_t _max_particles_per_iter_type;
  _max_particles_per_iter_type max_particles_per_iter;





  typedef boost::shared_ptr< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPlumeConfigurationRequest_

typedef ::uuv_plume_msgs::SetPlumeConfigurationRequest_<std::allocator<void> > SetPlumeConfigurationRequest;

typedef boost::shared_ptr< ::uuv_plume_msgs::SetPlumeConfigurationRequest > SetPlumeConfigurationRequestPtr;
typedef boost::shared_ptr< ::uuv_plume_msgs::SetPlumeConfigurationRequest const> SetPlumeConfigurationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator1> & lhs, const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.n_points == rhs.n_points &&
    lhs.max_particles_per_iter == rhs.max_particles_per_iter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator1> & lhs, const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_plume_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a7f8d06a81519e9cf6e191dda3bb0fa5";
  }

  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa7f8d06a81519e9cULL;
  static const uint64_t static_value2 = 0xf6e191dda3bb0fa5ULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_plume_msgs/SetPlumeConfigurationRequest";
  }

  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
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
"int32 n_points\n"
"int32 max_particles_per_iter\n"
;
  }

  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.n_points);
      stream.next(m.max_particles_per_iter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPlumeConfigurationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_plume_msgs::SetPlumeConfigurationRequest_<ContainerAllocator>& v)
  {
    s << indent << "n_points: ";
    Printer<int32_t>::stream(s, indent + "  ", v.n_points);
    s << indent << "max_particles_per_iter: ";
    Printer<int32_t>::stream(s, indent + "  ", v.max_particles_per_iter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATIONREQUEST_H
