// Generated by gencpp from file uuv_plume_msgs/DeletePlume.msg
// DO NOT EDIT!


#ifndef UUV_PLUME_MSGS_MESSAGE_DELETEPLUME_H
#define UUV_PLUME_MSGS_MESSAGE_DELETEPLUME_H

#include <ros/service_traits.h>


#include <uuv_plume_msgs/DeletePlumeRequest.h>
#include <uuv_plume_msgs/DeletePlumeResponse.h>


namespace uuv_plume_msgs
{

struct DeletePlume
{

typedef DeletePlumeRequest Request;
typedef DeletePlumeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DeletePlume
} // namespace uuv_plume_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uuv_plume_msgs::DeletePlume > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::uuv_plume_msgs::DeletePlume&) { return value(); }
};

template<>
struct DataType< ::uuv_plume_msgs::DeletePlume > {
  static const char* value()
  {
    return "uuv_plume_msgs/DeletePlume";
  }

  static const char* value(const ::uuv_plume_msgs::DeletePlume&) { return value(); }
};


// service_traits::MD5Sum< ::uuv_plume_msgs::DeletePlumeRequest> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::DeletePlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::DeletePlumeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::DeletePlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::DeletePlumeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::DeletePlumeRequest> should match
// service_traits::DataType< ::uuv_plume_msgs::DeletePlume >
template<>
struct DataType< ::uuv_plume_msgs::DeletePlumeRequest>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::DeletePlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::DeletePlumeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uuv_plume_msgs::DeletePlumeResponse> should match
// service_traits::MD5Sum< ::uuv_plume_msgs::DeletePlume >
template<>
struct MD5Sum< ::uuv_plume_msgs::DeletePlumeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uuv_plume_msgs::DeletePlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::DeletePlumeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uuv_plume_msgs::DeletePlumeResponse> should match
// service_traits::DataType< ::uuv_plume_msgs::DeletePlume >
template<>
struct DataType< ::uuv_plume_msgs::DeletePlumeResponse>
{
  static const char* value()
  {
    return DataType< ::uuv_plume_msgs::DeletePlume >::value();
  }
  static const char* value(const ::uuv_plume_msgs::DeletePlumeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UUV_PLUME_MSGS_MESSAGE_DELETEPLUME_H
