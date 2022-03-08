// Generated by gencpp from file uuv_plume_msgs/GetPlumeConfigurationRequest.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_GETPLUMECONFIGURATIONREQUEST_H
#define UUV_PLUME_MSGS_MESSAGE_GETPLUMECONFIGURATIONREQUEST_H


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
struct GetPlumeConfigurationRequest_
{
  typedef GetPlumeConfigurationRequest_<ContainerAllocator> Type;

  GetPlumeConfigurationRequest_()
    {
    }
  GetPlumeConfigurationRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetPlumeConfigurationRequest_

typedef ::uuv_plume_msgs::GetPlumeConfigurationRequest_<std::allocator<void> > GetPlumeConfigurationRequest;

typedef boost::shared_ptr< ::uuv_plume_msgs::GetPlumeConfigurationRequest > GetPlumeConfigurationRequestPtr;
typedef boost::shared_ptr< ::uuv_plume_msgs::GetPlumeConfigurationRequest const> GetPlumeConfigurationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace uuv_plume_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_plume_msgs/GetPlumeConfigurationRequest";
  }

  static const char* value(const ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
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
;
  }

  static const char* value(const ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPlumeConfigurationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::uuv_plume_msgs::GetPlumeConfigurationRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_GETPLUMECONFIGURATIONREQUEST_H
