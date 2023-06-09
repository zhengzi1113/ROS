// Generated by gencpp from file sever_client/ADDints.msg
// DO NOT EDIT!


#ifndef SEVER_CLIENT_MESSAGE_ADDINTS_H
#define SEVER_CLIENT_MESSAGE_ADDINTS_H

#include <ros/service_traits.h>


#include <sever_client/ADDintsRequest.h>
#include <sever_client/ADDintsResponse.h>


namespace sever_client
{

struct ADDints
{

typedef ADDintsRequest Request;
typedef ADDintsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ADDints
} // namespace sever_client


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sever_client::ADDints > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::sever_client::ADDints&) { return value(); }
};

template<>
struct DataType< ::sever_client::ADDints > {
  static const char* value()
  {
    return "sever_client/ADDints";
  }

  static const char* value(const ::sever_client::ADDints&) { return value(); }
};


// service_traits::MD5Sum< ::sever_client::ADDintsRequest> should match
// service_traits::MD5Sum< ::sever_client::ADDints >
template<>
struct MD5Sum< ::sever_client::ADDintsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sever_client::ADDints >::value();
  }
  static const char* value(const ::sever_client::ADDintsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sever_client::ADDintsRequest> should match
// service_traits::DataType< ::sever_client::ADDints >
template<>
struct DataType< ::sever_client::ADDintsRequest>
{
  static const char* value()
  {
    return DataType< ::sever_client::ADDints >::value();
  }
  static const char* value(const ::sever_client::ADDintsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sever_client::ADDintsResponse> should match
// service_traits::MD5Sum< ::sever_client::ADDints >
template<>
struct MD5Sum< ::sever_client::ADDintsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sever_client::ADDints >::value();
  }
  static const char* value(const ::sever_client::ADDintsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sever_client::ADDintsResponse> should match
// service_traits::DataType< ::sever_client::ADDints >
template<>
struct DataType< ::sever_client::ADDintsResponse>
{
  static const char* value()
  {
    return DataType< ::sever_client::ADDints >::value();
  }
  static const char* value(const ::sever_client::ADDintsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SEVER_CLIENT_MESSAGE_ADDINTS_H
