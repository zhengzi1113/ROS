// Generated by gencpp from file action/AddIntsGoal.msg
// DO NOT EDIT!


#ifndef ACTION_MESSAGE_ADDINTSGOAL_H
#define ACTION_MESSAGE_ADDINTSGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace action
{
template <class ContainerAllocator>
struct AddIntsGoal_
{
  typedef AddIntsGoal_<ContainerAllocator> Type;

  AddIntsGoal_()
    : num(0)  {
    }
  AddIntsGoal_(const ContainerAllocator& _alloc)
    : num(0)  {
  (void)_alloc;
    }



   typedef int32_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::action::AddIntsGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::action::AddIntsGoal_<ContainerAllocator> const> ConstPtr;

}; // struct AddIntsGoal_

typedef ::action::AddIntsGoal_<std::allocator<void> > AddIntsGoal;

typedef boost::shared_ptr< ::action::AddIntsGoal > AddIntsGoalPtr;
typedef boost::shared_ptr< ::action::AddIntsGoal const> AddIntsGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::action::AddIntsGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::action::AddIntsGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::action::AddIntsGoal_<ContainerAllocator1> & lhs, const ::action::AddIntsGoal_<ContainerAllocator2> & rhs)
{
  return lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::action::AddIntsGoal_<ContainerAllocator1> & lhs, const ::action::AddIntsGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace action

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::action::AddIntsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::action::AddIntsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action::AddIntsGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::action::AddIntsGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action::AddIntsGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::action::AddIntsGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::action::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::action::AddIntsGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x54b3c80efd6fae6eULL;
  static const uint64_t static_value2 = 0x6ffff8a4b9facd69ULL;
};

template<class ContainerAllocator>
struct DataType< ::action::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "action/AddIntsGoal";
  }

  static const char* value(const ::action::AddIntsGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::action::AddIntsGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#1.目标数据变量\n"
"int32 num\n"
;
  }

  static const char* value(const ::action::AddIntsGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::action::AddIntsGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddIntsGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::action::AddIntsGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::action::AddIntsGoal_<ContainerAllocator>& v)
  {
    s << indent << "num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTION_MESSAGE_ADDINTSGOAL_H