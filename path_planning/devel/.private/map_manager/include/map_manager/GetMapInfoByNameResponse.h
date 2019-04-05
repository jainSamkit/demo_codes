// Generated by gencpp from file map_manager/GetMapInfoByNameResponse.msg
// DO NOT EDIT!


#ifndef MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMERESPONSE_H
#define MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <map_manager/Float1DArray.h>
#include <map_manager/Float1DArray.h>

namespace map_manager
{
template <class ContainerAllocator>
struct GetMapInfoByNameResponse_
{
  typedef GetMapInfoByNameResponse_<ContainerAllocator> Type;

  GetMapInfoByNameResponse_()
    : success(false)
    , message()
    , map_lng()
    , map_lat()
    , obstacle_ids()
    , obstacle_lngs()
    , obstacle_lats()  {
    }
  GetMapInfoByNameResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)
    , map_lng(_alloc)
    , map_lat(_alloc)
    , obstacle_ids(_alloc)
    , obstacle_lngs(_alloc)
    , obstacle_lats(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _map_lng_type;
  _map_lng_type map_lng;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _map_lat_type;
  _map_lat_type map_lat;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _obstacle_ids_type;
  _obstacle_ids_type obstacle_ids;

   typedef std::vector< ::map_manager::Float1DArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::map_manager::Float1DArray_<ContainerAllocator> >::other >  _obstacle_lngs_type;
  _obstacle_lngs_type obstacle_lngs;

   typedef std::vector< ::map_manager::Float1DArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::map_manager::Float1DArray_<ContainerAllocator> >::other >  _obstacle_lats_type;
  _obstacle_lats_type obstacle_lats;





  typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetMapInfoByNameResponse_

typedef ::map_manager::GetMapInfoByNameResponse_<std::allocator<void> > GetMapInfoByNameResponse;

typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameResponse > GetMapInfoByNameResponsePtr;
typedef boost::shared_ptr< ::map_manager::GetMapInfoByNameResponse const> GetMapInfoByNameResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e16de195393d31e1bb182bebe2073a24";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe16de195393d31e1ULL;
  static const uint64_t static_value2 = 0xbb182bebe2073a24ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_manager/GetMapInfoByNameResponse";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string message\n\
float32[] map_lng\n\
float32[] map_lat\n\
string[] obstacle_ids\n\
Float1DArray[] obstacle_lngs\n\
Float1DArray[] obstacle_lats\n\
\n\
\n\
================================================================================\n\
MSG: map_manager/Float1DArray\n\
float32[] single_coord\n\
";
  }

  static const char* value(const ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
      stream.next(m.map_lng);
      stream.next(m.map_lat);
      stream.next(m.obstacle_ids);
      stream.next(m.obstacle_lngs);
      stream.next(m.obstacle_lats);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetMapInfoByNameResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_manager::GetMapInfoByNameResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "map_lng[]" << std::endl;
    for (size_t i = 0; i < v.map_lng.size(); ++i)
    {
      s << indent << "  map_lng[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.map_lng[i]);
    }
    s << indent << "map_lat[]" << std::endl;
    for (size_t i = 0; i < v.map_lat.size(); ++i)
    {
      s << indent << "  map_lat[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.map_lat[i]);
    }
    s << indent << "obstacle_ids[]" << std::endl;
    for (size_t i = 0; i < v.obstacle_ids.size(); ++i)
    {
      s << indent << "  obstacle_ids[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.obstacle_ids[i]);
    }
    s << indent << "obstacle_lngs[]" << std::endl;
    for (size_t i = 0; i < v.obstacle_lngs.size(); ++i)
    {
      s << indent << "  obstacle_lngs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::map_manager::Float1DArray_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacle_lngs[i]);
    }
    s << indent << "obstacle_lats[]" << std::endl;
    for (size_t i = 0; i < v.obstacle_lats.size(); ++i)
    {
      s << indent << "  obstacle_lats[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::map_manager::Float1DArray_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacle_lats[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MANAGER_MESSAGE_GETMAPINFOBYNAMERESPONSE_H
