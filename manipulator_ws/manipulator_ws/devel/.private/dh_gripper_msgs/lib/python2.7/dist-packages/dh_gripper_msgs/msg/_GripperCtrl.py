# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dh_gripper_msgs/GripperCtrl.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GripperCtrl(genpy.Message):
  _md5sum = "9dac35721dba07cb7d14035fd6884134"
  _type = "dh_gripper_msgs/GripperCtrl"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool initialize
float32 position
float32 force
float32 speed

"""
  __slots__ = ['initialize','position','force','speed']
  _slot_types = ['bool','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       initialize,position,force,speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GripperCtrl, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.initialize is None:
        self.initialize = False
      if self.position is None:
        self.position = 0.
      if self.force is None:
        self.force = 0.
      if self.speed is None:
        self.speed = 0.
    else:
      self.initialize = False
      self.position = 0.
      self.force = 0.
      self.speed = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B3f().pack(_x.initialize, _x.position, _x.force, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.initialize, _x.position, _x.force, _x.speed,) = _get_struct_B3f().unpack(str[start:end])
      self.initialize = bool(self.initialize)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B3f().pack(_x.initialize, _x.position, _x.force, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.initialize, _x.position, _x.force, _x.speed,) = _get_struct_B3f().unpack(str[start:end])
      self.initialize = bool(self.initialize)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B3f = None
def _get_struct_B3f():
    global _struct_B3f
    if _struct_B3f is None:
        _struct_B3f = struct.Struct("<B3f")
    return _struct_B3f
