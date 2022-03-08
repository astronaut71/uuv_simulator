// Generated by gencpp from file uuv_plume_msgs/CreatePassiveScalarTurbulentPlume.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_CREATEPASSIVESCALARTURBULENTPLUME_H
#define UUV_PLUME_MSGS_MESSAGE_CREATEPASSIVESCALARTURBULENTPLUME_H

#include <ros/service_traits.h>


#include <uuv_plume_msgs/CreatePassiveScalarTurbulentPlumeRequest.h>
#include <uuv_plume_msgs/CreatePassiveScalarTurbulentPlumeResponse.h>


namespace uuv_plume_msgs
{

struct CreatePassiveScalarTurbulentPlume
{

typedef CreatePassiveScalarTurbulentPlumeRequest Request;
typedef CreatePassiveScalarTurbulentPlumeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CreatePassiveScalarTurbulentPlume
} // namespace uuv_plume_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume > {
  static const char* value()
  {
    return "f374842dc7a898751eeacdffd08129ce";
  }

  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume&) { return value(); }
};

template<>
struct DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume > {
  static const char* value()
  {
    return "uuv_plume_msgs/CreatePassiveScalarTurbulentPlume";
  }

  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume&) { return value(); }
};


// service_traits::MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest> should match
// service_traits::DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >
template<>
struct DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse> should match
// service_traits::DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >
template<>
struct DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::CreatePassiveScalarTurbulentPlumeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_CREATEPASSIVESCALARTURBULENTPLUME_H
