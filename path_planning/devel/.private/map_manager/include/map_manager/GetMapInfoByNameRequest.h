// Generated by gencpp from file map_manager/GetMapInfoByNameRequest.msg
// DO NOT EDIT!


#ifndef MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMEREQUEST_H
#define MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMEREQUEST_H


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
struct GetMapInfoByNameRequest_
{
  typedef GetMapInfoByNameRequest_<ContainerAllocator> Type;

  GetMapInfoByNameRequest_()
    : map_id()  {
    }
  GetMapInfoByNameRequest_(const ContainerAllocator& _alloc)
    : map_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _map_id_type;
  _map_id_type map_id;





  typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetMapInfoByNameRequest_

typedef ::map_manager::GetMapInfoByNameRequest_<std::allocator<void> > GetMapInfoByNameRequest;

typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameRequest > GetMapInfoByNameRequestPtr;
typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameRequest const> GetMapInfoByNameRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d742ddbd5e3e8937162044ae4b300275";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd742ddbd5e3e8937ULL;
  static const uint64_t static_value2 = 0x162044ae4b300275ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_manager/GetMapInfoByNameRequest";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_id\n\
";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMapInfoByNameRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_manager::GetMapInfoByNameRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.map_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMEREQUEST_H
