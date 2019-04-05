// Generated by gencpp from file map_manager/SaveObstaclesRequest.msg
// DO NOT EDIT!


#ifndef MAP_MANAGER_MESSAGE_SAVEOBSTACLESREQUEST_H
#define MAP_MANAGER_MESSAGE_SAVEOBSTACLESREQUEST_H


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
struct SaveObstaclesRequest_
{
  typedef SaveObstaclesRequest_<ContainerAllocator> Type;

  SaveObstaclesRequest_()
    : map_id()
    , obstacle_ids()
    , lngs()
    , lats()  {
    }
  SaveObstaclesRequest_(const ContainerAllocator& _alloc)
    : map_id(_alloc)
    , obstacle_ids(_alloc)
    , lngs(_alloc)
    , lats(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _map_id_type;
  _map_id_type map_id;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _obstacle_ids_type;
  _obstacle_ids_type obstacle_ids;

   typedef std::vector< ::map_manager::Float1DArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::map_manager::Float1DArray_<ContainerAllocator> >::other >  _lngs_type;
  _lngs_type lngs;

   typedef std::vector< ::map_manager::Float1DArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::map_manager::Float1DArray_<ContainerAllocator> >::other >  _lats_type;
  _lats_type lats;





  typedef boost::shared_ptr< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaveObstaclesRequest_

typedef ::map_manager::SaveObstaclesRequest_<std::allocator<void> > SaveObstaclesRequest;

typedef boost::shared_ptr< ::map_manager::SaveObstaclesRequest > SaveObstaclesRequestPtr;
typedef boost::shared_ptr< ::map_manager::SaveObstaclesRequest const> SaveObstaclesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_manager::SaveObstaclesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63802fd267b282523253c0b9c6d7bc9f";
  }

  static const char* value(const ::map_manager::SaveObstaclesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63802fd267b28252ULL;
  static const uint64_t static_value2 = 0x3253c0b9c6d7bc9fULL;
};

template<class ContainerAllocator>
struct DataType< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_manager/SaveObstaclesRequest";
  }

  static const char* value(const ::map_manager::SaveObstaclesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string map_id\n\
string[] obstacle_ids\n\
Float1DArray[] lngs\n\
Float1DArray[] lats\n\
\n\
================================================================================\n\
MSG: map_manager/Float1DArray\n\
float32[] single_coord\n\
";
  }

  static const char* value(const ::map_manager::SaveObstaclesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_id);
      stream.next(m.obstacle_ids);
      stream.next(m.lngs);
      stream.next(m.lats);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveObstaclesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_manager::SaveObstaclesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_manager::SaveObstaclesRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.map_id);
    s << indent << "obstacle_ids[]" << std::endl;
    for (size_t i = 0; i < v.obstacle_ids.size(); ++i)
    {
      s << indent << "  obstacle_ids[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.obstacle_ids[i]);
    }
    s << indent << "lngs[]" << std::endl;
    for (size_t i = 0; i < v.lngs.size(); ++i)
    {
      s << indent << "  lngs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::map_manager::Float1DArray_<ContainerAllocator> >::stream(s, indent + "    ", v.lngs[i]);
    }
    s << indent << "lats[]" << std::endl;
    for (size_t i = 0; i < v.lats.size(); ++i)
    {
      s << indent << "  lats[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::map_manager::Float1DArray_<ContainerAllocator> >::stream(s, indent + "    ", v.lats[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MANAGER_MESSAGE_SAVEOBSTACLESREQUEST_H
