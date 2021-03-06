// Generated by gencpp from file commander/SAVE_OBS_DATAResponse.msg
// DO NOT EDIT!


#ifndef COMMANDER_MESSAGE_SAVE_OBS_DATARESPONSE_H
#define COMMANDER_MESSAGE_SAVE_OBS_DATARESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace commander
{
template <class ContainerAllocator>
struct SAVE_OBS_DATAResponse_
{
  typedef SAVE_OBS_DATAResponse_<ContainerAllocator> Type;

  SAVE_OBS_DATAResponse_()
    : success(false)
    , message()  {
    }
  SAVE_OBS_DATAResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SAVE_OBS_DATAResponse_

typedef ::commander::SAVE_OBS_DATAResponse_<std::allocator<void> > SAVE_OBS_DATAResponse;

typedef boost::shared_ptr< ::commander::SAVE_OBS_DATAResponse > SAVE_OBS_DATAResponsePtr;
typedef boost::shared_ptr< ::commander::SAVE_OBS_DATAResponse const> SAVE_OBS_DATAResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace commander

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "commander/SAVE_OBS_DATAResponse";
  }

  static const char* value(const ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string message\n\
";
  }

  static const char* value(const ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SAVE_OBS_DATAResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::commander::SAVE_OBS_DATAResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMANDER_MESSAGE_SAVE_OBS_DATARESPONSE_H
