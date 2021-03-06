// Generated by gencpp from file hector_mapping/ResetMapping.msg
// DO NOT EDIT!


#ifndef HECTOR_MAPPING_MESSAGE_RESETMAPPING_H
#define HECTOR_MAPPING_MESSAGE_RESETMAPPING_H

#include <ros/service_traits.h>


#include <hector_mapping/ResetMappingRequest.h>
#include <hector_mapping/ResetMappingResponse.h>


namespace hector_mapping
{

struct ResetMapping
{

typedef ResetMappingRequest Request;
typedef ResetMappingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ResetMapping
} // namespace hector_mapping


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hector_mapping::ResetMapping > {
  static const char* value()
  {
    return "3423647d14c6c84592eef8b1184a5974";
  }

  static const char* value(const ::hector_mapping::ResetMapping&) { return value(); }
};

template<>
struct DataType< ::hector_mapping::ResetMapping > {
  static const char* value()
  {
    return "hector_mapping/ResetMapping";
  }

  static const char* value(const ::hector_mapping::ResetMapping&) { return value(); }
};


// service_traits::MD5Sum< ::hector_mapping::ResetMappingRequest> should match
// service_traits::MD5Sum< ::hector_mapping::ResetMapping >
template<>
struct MD5Sum< ::hector_mapping::ResetMappingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hector_mapping::ResetMapping >::value();
  }
  static const char* value(const ::hector_mapping::ResetMappingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hector_mapping::ResetMappingRequest> should match
// service_traits::DataType< ::hector_mapping::ResetMapping >
template<>
struct DataType< ::hector_mapping::ResetMappingRequest>
{
  static const char* value()
  {
    return DataType< ::hector_mapping::ResetMapping >::value();
  }
  static const char* value(const ::hector_mapping::ResetMappingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hector_mapping::ResetMappingResponse> should match
// service_traits::MD5Sum< ::hector_mapping::ResetMapping >
template<>
struct MD5Sum< ::hector_mapping::ResetMappingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hector_mapping::ResetMapping >::value();
  }
  static const char* value(const ::hector_mapping::ResetMappingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hector_mapping::ResetMappingResponse> should match
// service_traits::DataType< ::hector_mapping::ResetMapping >
template<>
struct DataType< ::hector_mapping::ResetMappingResponse>
{
  static const char* value()
  {
    return DataType< ::hector_mapping::ResetMapping >::value();
  }
  static const char* value(const ::hector_mapping::ResetMappingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HECTOR_MAPPING_MESSAGE_RESETMAPPING_H
