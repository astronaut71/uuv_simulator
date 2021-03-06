// Generated by gencpp from file uuv_plume_msgs/LoadPlumeParticlesRequest.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_LOADPLUMEPARTICLESREQUEST_H
#define UUV_PLUME_MSGS_MESSAGE_LOADPLUMEPARTICLESREQUEST_H


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
struct LoadPlumeParticlesRequest_
{
  typedef LoadPlumeParticlesRequest_<ContainerAllocator> Type;

  LoadPlumeParticlesRequest_()
    : plume_file()  {
    }
  LoadPlumeParticlesRequest_(const ContainerAllocator& _alloc)
    : plume_file(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _plume_file_type;
  _plume_file_type plume_file;





  typedef boost::shared_ptr< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LoadPlumeParticlesRequest_

typedef ::uuv_plume_msgs::LoadPlumeParticlesRequest_<std::allocator<void> > LoadPlumeParticlesRequest;

typedef boost::shared_ptr< ::uuv_plume_msgs::LoadPlumeParticlesRequest > LoadPlumeParticlesRequestPtr;
typedef boost::shared_ptr< ::uuv_plume_msgs::LoadPlumeParticlesRequest const> LoadPlumeParticlesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator1> & lhs, const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.plume_file == rhs.plume_file;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator1> & lhs, const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uuv_plume_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2f569e2de6ecc6123f7870cc79a6598";
  }

  static const char* value(const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2f569e2de6ecc61ULL;
  static const uint64_t static_value2 = 0x23f7870cc79a6598ULL;
};

template<class ContainerAllocator>
struct DataType< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uuv_plume_msgs/LoadPlumeParticlesRequest";
  }

  static const char* value(const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
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
"string plume_file\n"
;
  }

  static const char* value(const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.plume_file);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadPlumeParticlesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uuv_plume_msgs::LoadPlumeParticlesRequest_<ContainerAllocator>& v)
  {
    s << indent << "plume_file: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.plume_file);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_LOADPLUMEPARTICLESREQUEST_H
