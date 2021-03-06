// Generated by gencpp from file map_manager/StartMissionRequest.msg
// DO NOT EDIT!


#ifndef MAP_MANAGER_MESSAGE_STARTMISSIONREQUEST_H
#define MAP_MANAGER_MESSAGE_STARTMISSIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace map_manager
{
template <class ContainerAllocator>
struct StartMissionRequest_
{
  typedef StartMissionRequest_<ContainerAllocator> Type;

  StartMissionRequest_()
    : map_id()
    , start_lng(0.0)
    , start_lat(0.0)
    , target_lng(0.0)
    , target_lat(0.0)  {
    }
  StartMissionRequest_(const ContainerAllocator& _alloc)
    : map_id(_alloc)
    , start_lng(0.0)
    , start_lat(0.0)
    , target_lng(0.0)
    , target_lat(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _map_id_type;
  _map_id_type map_id;

   typedef float _start_lng_type;
  _start_lng_type start_lng;

   typedef float _start_lat_type;
  _start_lat_type start_lat;

   typedef float _target_lng_type;
  _target_lng_type target_lng;

   typedef float _target_lat_type;
  _target_lat_type target_lat;





  typedef boost::shared_ptr< ::map_manager::StartMissionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_manager::StartMissionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartMissionRequest_

typedef ::map_manager::StartMissionRequest_<std::allocator<void> > StartMissionRequest;

typedef boost::shared_ptr< ::map_manager::StartMissionRequest > StartMissionRequestPtr;
typedef boost::shared_ptr< ::map_manager::StartMissionRequest const> StartMissionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_manager::StartMissionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_manager::StartMissionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace map_manager

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'map_manager': ['/home/darth/Desktop/sc2_ros/src/map_manager/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::map_manager::StartMissionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_manager::StartMissionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::StartMissionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::StartMissionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::StartMissionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::StartMissionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_manager::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "91f3b085e01d6a7d43fd25e6b14ec944";
  }

  static const char* value(const ::map_manager::StartMissionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x91f3b085e01d6a7dULL;
  static const uint64_t static_value2 = 0x43fd25e6b14ec944ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_manager::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_manager/StartMissionRequest";
  }

  static const char* value(const ::map_manager::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_manager::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_id\n\
float32 start_lng\n\
float32 start_lat\n\
float32 target_lng\n\
float32 target_lat\n\
";
  }

  static const char* value(const ::map_manager::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_manager::StartMissionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_id);
      stream.next(m.start_lng);
      stream.next(m.start_lat);
      stream.next(m.target_lng);
      stream.next(m.target_lat);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartMissionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_manager::StartMissionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_manager::StartMissionRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.map_id);
    s << indent << "start_lng: ";
    Printer<float>::stream(s, indent + "  ", v.start_lng);
    s << indent << "start_lat: ";
    Printer<float>::stream(s, indent + "  ", v.start_lat);
    s << indent << "target_lng: ";
    Printer<float>::stream(s, indent + "  ", v.target_lng);
    s << indent << "target_lat: ";
    Printer<float>::stream(s, indent + "  ", v.target_lat);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MANAGER_MESSAGE_STARTMISSIONREQUEST_H
