// Generated by gencpp from file commander/SAVE_OBS_DATA.msg
// DO NOT EDIT!


#ifndef COMMANDER_MESSAGE_SAVE_OBS_DATA_H
#define COMMANDER_MESSAGE_SAVE_OBS_DATA_H

#include <ros/service_traits.h>


#include <commander/SAVE_OBS_DATARequest.h>
#include <commander/SAVE_OBS_DATAResponse.h>


namespace commander
{

struct SAVE_OBS_DATA
{

typedef SAVE_OBS_DATARequest Request;
typedef SAVE_OBS_DATAResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SAVE_OBS_DATA
} // namespace commander


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::commander::SAVE_OBS_DATA > {
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::commander::SAVE_OBS_DATA&) { return value(); }
};

template<>
struct DataType< ::commander::SAVE_OBS_DATA > {
  static const char* value()
  {
    return "commander/SAVE_OBS_DATA";
  }

  static const char* value(const ::commander::SAVE_OBS_DATA&) { return value(); }
};


// service_traits::MD5Sum< ::commander::SAVE_OBS_DATARequest> should match 
// service_traits::MD5Sum< ::commander::SAVE_OBS_DATA > 
template<>
struct MD5Sum< ::commander::SAVE_OBS_DATARequest>
{
  static const char* value()
  {
    return MD5Sum< ::commander::SAVE_OBS_DATA >::value();
  }
  static const char* value(const ::commander::SAVE_OBS_DATARequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::SAVE_OBS_DATARequest> should match 
// service_traits::DataType< ::commander::SAVE_OBS_DATA > 
template<>
struct DataType< ::commander::SAVE_OBS_DATARequest>
{
  static const char* value()
  {
    return DataType< ::commander::SAVE_OBS_DATA >::value();
  }
  static const char* value(const ::commander::SAVE_OBS_DATARequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::commander::SAVE_OBS_DATAResponse> should match 
// service_traits::MD5Sum< ::commander::SAVE_OBS_DATA > 
template<>
struct MD5Sum< ::commander::SAVE_OBS_DATAResponse>
{
  static const char* value()
  {
    return MD5Sum< ::commander::SAVE_OBS_DATA >::value();
  }
  static const char* value(const ::commander::SAVE_OBS_DATAResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::commander::SAVE_OBS_DATAResponse> should match 
// service_traits::DataType< ::commander::SAVE_OBS_DATA > 
template<>
struct DataType< ::commander::SAVE_OBS_DATAResponse>
{
  static const char* value()
  {
    return DataType< ::commander::SAVE_OBS_DATA >::value();
  }
  static const char* value(const ::commander::SAVE_OBS_DATAResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMMANDER_MESSAGE_SAVE_OBS_DATA_H
