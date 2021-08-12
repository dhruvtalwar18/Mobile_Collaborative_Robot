// Generated by gencpp from file dh_gripper_msgs/GripperRotCtrl.msg
// DO NOT EDIT!


#ifndef DH_GRIPPER_MSGS_MESSAGE_GRIPPERROTCTRL_H
#define DH_GRIPPER_MSGS_MESSAGE_GRIPPERROTCTRL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dh_gripper_msgs
{
template <class ContainerAllocator>
struct GripperRotCtrl_
{
  typedef GripperRotCtrl_<ContainerAllocator> Type;

  GripperRotCtrl_()
    : angle(0.0)
    , force(0.0)
    , speed(0.0)  {
    }
  GripperRotCtrl_(const ContainerAllocator& _alloc)
    : angle(0.0)
    , force(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef float _angle_type;
  _angle_type angle;

   typedef float _force_type;
  _force_type force;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> const> ConstPtr;

}; // struct GripperRotCtrl_

typedef ::dh_gripper_msgs::GripperRotCtrl_<std::allocator<void> > GripperRotCtrl;

typedef boost::shared_ptr< ::dh_gripper_msgs::GripperRotCtrl > GripperRotCtrlPtr;
typedef boost::shared_ptr< ::dh_gripper_msgs::GripperRotCtrl const> GripperRotCtrlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator1> & lhs, const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle &&
    lhs.force == rhs.force &&
    lhs.speed == rhs.speed;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator1> & lhs, const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dh_gripper_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a77492f68f8cfc74c6aa20ed8861b625";
  }

  static const char* value(const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa77492f68f8cfc74ULL;
  static const uint64_t static_value2 = 0xc6aa20ed8861b625ULL;
};

template<class ContainerAllocator>
struct DataType< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dh_gripper_msgs/GripperRotCtrl";
  }

  static const char* value(const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 angle\n"
"float32 force\n"
"float32 speed\n"
;
  }

  static const char* value(const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
      stream.next(m.force);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GripperRotCtrl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dh_gripper_msgs::GripperRotCtrl_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "force: ";
    Printer<float>::stream(s, indent + "  ", v.force);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DH_GRIPPER_MSGS_MESSAGE_GRIPPERROTCTRL_H
