// Generated by gencpp from file opencv_apps/RotatedRectArray.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_ROTATEDRECTARRAY_H
#define OPENCV_APPS_MESSAGE_ROTATEDRECTARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <opencv_apps/RotatedRect.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct RotatedRectArray_
{
  typedef RotatedRectArray_<ContainerAllocator> Type;

  RotatedRectArray_()
    : rects()  {
    }
  RotatedRectArray_(const ContainerAllocator& _alloc)
    : rects(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::opencv_apps::RotatedRect_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::opencv_apps::RotatedRect_<ContainerAllocator> >::other >  _rects_type;
  _rects_type rects;





  typedef boost::shared_ptr< ::opencv_apps::RotatedRectArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::RotatedRectArray_<ContainerAllocator> const> ConstPtr;

}; // struct RotatedRectArray_

typedef ::opencv_apps::RotatedRectArray_<std::allocator<void> > RotatedRectArray;

typedef boost::shared_ptr< ::opencv_apps::RotatedRectArray > RotatedRectArrayPtr;
typedef boost::shared_ptr< ::opencv_apps::RotatedRectArray const> RotatedRectArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::RotatedRectArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::opencv_apps::RotatedRectArray_<ContainerAllocator1> & lhs, const ::opencv_apps::RotatedRectArray_<ContainerAllocator2> & rhs)
{
  return lhs.rects == rhs.rects;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::opencv_apps::RotatedRectArray_<ContainerAllocator1> & lhs, const ::opencv_apps::RotatedRectArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace opencv_apps

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::RotatedRectArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::RotatedRectArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::RotatedRectArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a27e397ed2b5b1a633561d324f64d2a6";
  }

  static const char* value(const ::opencv_apps::RotatedRectArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa27e397ed2b5b1a6ULL;
  static const uint64_t static_value2 = 0x33561d324f64d2a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/RotatedRectArray";
  }

  static const char* value(const ::opencv_apps::RotatedRectArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RotatedRect[] rects\n"
"\n"
"================================================================================\n"
"MSG: opencv_apps/RotatedRect\n"
"float64 angle\n"
"Point2D center\n"
"Size size\n"
"\n"
"================================================================================\n"
"MSG: opencv_apps/Point2D\n"
"float64 x\n"
"float64 y\n"
"\n"
"\n"
"================================================================================\n"
"MSG: opencv_apps/Size\n"
"float64 width\n"
"float64 height\n"
"\n"
;
  }

  static const char* value(const ::opencv_apps::RotatedRectArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.rects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotatedRectArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::RotatedRectArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::RotatedRectArray_<ContainerAllocator>& v)
  {
    s << indent << "rects[]" << std::endl;
    for (size_t i = 0; i < v.rects.size(); ++i)
    {
      s << indent << "  rects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::opencv_apps::RotatedRect_<ContainerAllocator> >::stream(s, indent + "    ", v.rects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_ROTATEDRECTARRAY_H
