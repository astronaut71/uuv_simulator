// Generated by gencpp from file uuv_plume_msgs/SetPlumeConfiguration.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATION_H
#define UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATION_H

#include <ros/service_traits.h>


#include <uuv_plume_msgs/SetPlumeConfigurationRequest.h>
#include <uuv_plume_msgs/SetPlumeConfigurationResponse.h>


namespace uuv_plume_msgs
{

struct SetPlumeConfiguration
{

typedef SetPlumeConfigurationRequest Request;
typedef SetPlumeConfigurationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPlumeConfiguration
} // namespace uuv_plume_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uuv_plume_msgs::SetPlumeConfiguration > {
  static const char* value()
  {
    return "55045be54c5c1ddb03ae4cfc1750c6aa";
  }

  static const char* value(const ::uuv_plume_msgs::SetPlumeConfiguration&) { return value(); }
};

template<>
struct DataType< ::uuv_plume_msgs::SetPlumeConfiguration > {
  static const char* value()
  {
    return "uuv_plume_msgs/SetPlumeConfiguration";
  }

  static const char* value(const ::uuv_plume_msgs::SetPlumeConfiguration&) { return value(); }
};


// service_traits::MD5Sum< ::uuv_plume_msgs::SetPlumeConfigurationRequest> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::SetPlumeConfiguration >
template<>
struct MD5Sum< ::uuv_plume_msgs::SetPlumeConfigurationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::SetPlumeConfiguration >::value();
  }
  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::SetPlumeConfigurationRequest> should match
// service_traits::DataType< ::uuv_plume_msgs::SetPlumeConfiguration >
template<>
struct DataType< ::uuv_plume_msgs::SetPlumeConfigurationRequest>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::SetPlumeConfiguration >::value();
  }
  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uuv_plume_msgs::SetPlumeConfigurationResponse> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::SetPlumeConfiguration >
template<>
struct MD5Sum< ::uuv_plume_msgs::SetPlumeConfigurationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::SetPlumeConfiguration >::value();
  }
  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::SetPlumeConfigurationResponse> should match
// service_traits::DataType< ::uuv_plume_msgs::SetPlumeConfiguration >
template<>
struct DataType< ::uuv_plume_msgs::SetPlumeConfigurationResponse>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::SetPlumeConfiguration >::value();
  }
  static const char* value(const ::uuv_plume_msgs::SetPlumeConfigurationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_SETPLUMECONFIGURATION_H
