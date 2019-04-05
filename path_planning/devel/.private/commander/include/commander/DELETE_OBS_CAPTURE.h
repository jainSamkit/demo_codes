// Generated by gencpp from file commander/DELETE_OBS_CAPTURE.msg
// DO NOT EDIT!


#ifndef COMMANDER_MESSAGE_DELETE_OBS_CAPTURE_H
#define COMMANDER_MESSAGE_DELETE_OBS_CAPTURE_H

#include <ros/service_traits.h>


#include <commander/DELETE_OBS_CAPTURERequest.h>
#include <commander/DELETE_OBS_CAPTUREResponse.h>


namespace commander
{

struct DELETE_OBS_CAPTURE
{

typedef DELETE_OBS_CAPTURERequest Request;
typedef DELETE_OBS_CAPTUREResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DELETE_OBS_CAPTURE
} // namespace commander


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::commander::DELETE_OBS_CAPTURE > {
  static const char* value()
  {
    return "d82dc6474dd88dad5e1615ab1b2ca74c";
  }

  static const char* value(const ::commander::DELETE_OBS_CAPTURE&) { return value(); }
};

template<>
struct DataType< ::commander::DELETE_OBS_CAPTURE > {
  static const char* value()
  {
    return "commander/DELETE_OBS_CAPTURE";
  }

  static const char* value(const ::commander::DELETE_OBS_CAPTURE&) { return value(); }
};


// service_traits::MD5Sum< ::commander::DELETE_OBS_CAPTURERequest> should match 
// service_traits::MD5Sum< ::commander::DELETE_OBS_CAPTURE > 
template<>
struct MD5Sum< ::commander::DELETE_OBS_CAPTURERequest>
{
  static const char* value()
  {
    return MD5Sum< ::commander::DELETE_OBS_CAPTURE >::value();
  }
  static const char* value(const ::commander::DELETE_OBS_CAPTURERequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::DELETE_OBS_CAPTURERequest> should match 
// service_traits::DataType< ::commander::DELETE_OBS_CAPTURE > 
template<>
struct DataType< ::commander::DELETE_OBS_CAPTURERequest>
{
  static const char* value()
  {
    return DataType< ::commander::DELETE_OBS_CAPTURE >::value();
  }
  static const char* value(const ::commander::DELETE_OBS_CAPTURERequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::commander::DELETE_OBS_CAPTUREResponse> should match 
// service_traits::MD5Sum< ::commander::DELETE_OBS_CAPTURE > 
template<>
struct MD5Sum< ::commander::DELETE_OBS_CAPTUREResponse>
{
  static const char* value()
  {
    return MD5Sum< ::commander::DELETE_OBS_CAPTURE >::value();
  }
  static const char* value(const ::commander::DELETE_OBS_CAPTUREResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::DELETE_OBS_CAPTUREResponse> should match 
// service_traits::DataType< ::commander::DELETE_OBS_CAPTURE > 
template<>
struct DataType< ::commander::DELETE_OBS_CAPTUREResponse>
{
  static const char* value()
  {
    return DataType< ::commander::DELETE_OBS_CAPTURE >::value();
  }
  static const char* value(const ::commander::DELETE_OBS_CAPTUREResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMMANDER_MESSAGE_DELETE_OBS_CAPTURE_H
