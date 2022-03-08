// Generated by gencpp from file uuv_plume_msgs/CreateSpheroidPlume.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_CREATESPHEROIDPLUME_H
#define UUV_PLUME_MSGS_MESSAGE_CREATESPHEROIDPLUME_H

#include <ros/service_traits.h>


#include <uuv_plume_msgs/CreateSpheroidPlumeRequest.h>
#include <uuv_plume_msgs/CreateSpheroidPlumeResponse.h>


namespace uuv_plume_msgs
{

struct CreateSpheroidPlume
{

typedef CreateSpheroidPlumeRequest Request;
typedef CreateSpheroidPlumeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CreateSpheroidPlume
} // namespace uuv_plume_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlume > {
  static const char* value()
  {
    return "38f854ae91d626d8d19fa91958cef8f9";
  }

  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlume&) { return value(); }
};

template<>
struct DataType< ::uuv_plume_msgs::CreateSpheroidPlume > {
  static const char* value()
  {
    return "uuv_plume_msgs/CreateSpheroidPlume";
  }

  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlume&) { return value(); }
};


// service_traits::MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlumeRequest> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlumeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlumeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::CreateSpheroidPlumeRequest> should match
// service_traits::DataType< ::uuv_plume_msgs::CreateSpheroidPlume >
template<>
struct DataType< ::uuv_plume_msgs::CreateSpheroidPlumeRequest>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::CreateSpheroidPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlumeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlumeResponse> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlumeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::CreateSpheroidPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlumeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::CreateSpheroidPlumeResponse> should match
// service_traits::DataType< ::uuv_plume_msgs::CreateSpheroidPlume >
template<>
struct DataType< ::uuv_plume_msgs::CreateSpheroidPlumeResponse>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::CreateSpheroidPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreateSpheroidPlumeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_CREATESPHEROIDPLUME_H