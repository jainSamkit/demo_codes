// Generated by gencpp from file commander/GET_MAP_INFO.msg
// DO NOT EDIT!


#ifndef COMMANDER_MESSAGE_GET_MAP_INFO_H
#define COMMANDER_MESSAGE_GET_MAP_INFO_H

#include <ros/service_traits.h>


#include <commander/GET_MAP_INFORequest.h>
#include <commander/GET_MAP_INFOResponse.h>


namespace commander
{

struct GET_MAP_INFO
{

typedef GET_MAP_INFORequest Request;
typedef GET_MAP_INFOResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GET_MAP_INFO
} // namespace commander


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::commander::GET_MAP_INFO > {
  static const char* value()
  {
    return "4e3b8f219e9670547e0390d1b9191aa9";
  }

  static const char* value(const ::commander::GET_MAP_INFO&) { return value(); }
};

template<>
struct DataType< ::commander::GET_MAP_INFO > {
  static const char* value()
  {
    return "commander/GET_MAP_INFO";
  }

  static const char* value(const ::commander::GET_MAP_INFO&) { return value(); }
};


// service_traits::MD5Sum< ::commander::GET_MAP_INFORequest> should match 
// service_traits::MD5Sum< ::commander::GET_MAP_INFO > 
template<>
struct MD5Sum< ::commander::GET_MAP_INFORequest>
{
  static const char* value()
  {
    return MD5Sum< ::commander::GET_MAP_INFO >::value();
  }
  static const char* value(const ::commander::GET_MAP_INFORequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::GET_MAP_INFORequest> should match 
// service_traits::DataType< ::commander::GET_MAP_INFO > 
template<>
struct DataType< ::commander::GET_MAP_INFORequest>
{
  static const char* value()
  {
    return DataType< ::commander::GET_MAP_INFO >::value();
  }
  static const char* value(const ::commander::GET_MAP_INFORequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::commander::GET_MAP_INFOResponse> should match 
// service_traits::MD5Sum< ::commander::GET_MAP_INFO > 
template<>
struct MD5Sum< ::commander::GET_MAP_INFOResponse>
{
  static const char* value()
  {
    return MD5Sum< ::commander::GET_MAP_INFO >::value();
  }
  static const char* value(const ::commander::GET_MAP_INFOResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::GET_MAP_INFOResponse> should match 
// service_traits::DataType< ::commander::GET_MAP_INFO > 
template<>
struct DataType< ::commander::GET_MAP_INFOResponse>
{
  static const char* value()
  {
    return DataType< ::commander::GET_MAP_INFO >::value();
  }
  static const char* value(const ::commander::GET_MAP_INFOResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMMANDER_MESSAGE_GET_MAP_INFO_H
