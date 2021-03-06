# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robbie_stability/Contact.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Contact(genpy.Message):
  _md5sum = "31b45b8e08a0213533479b6867616a3e"
  _type = "robbie_stability/Contact"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

bool shank
bool lhm
bool stabilizer

string stabilizer_on
string shank_on
string lhm_on

geometry_msgs/Point stabilizer_location
geometry_msgs/Point shank_location
geometry_msgs/Point lhm_location
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['header','shank','lhm','stabilizer','stabilizer_on','shank_on','lhm_on','stabilizer_location','shank_location','lhm_location']
  _slot_types = ['std_msgs/Header','bool','bool','bool','string','string','string','geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,shank,lhm,stabilizer,stabilizer_on,shank_on,lhm_on,stabilizer_location,shank_location,lhm_location

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Contact, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.shank is None:
        self.shank = False
      if self.lhm is None:
        self.lhm = False
      if self.stabilizer is None:
        self.stabilizer = False
      if self.stabilizer_on is None:
        self.stabilizer_on = ''
      if self.shank_on is None:
        self.shank_on = ''
      if self.lhm_on is None:
        self.lhm_on = ''
      if self.stabilizer_location is None:
        self.stabilizer_location = geometry_msgs.msg.Point()
      if self.shank_location is None:
        self.shank_location = geometry_msgs.msg.Point()
      if self.lhm_location is None:
        self.lhm_location = geometry_msgs.msg.Point()
    else:
      self.header = std_msgs.msg.Header()
      self.shank = False
      self.lhm = False
      self.stabilizer = False
      self.stabilizer_on = ''
      self.shank_on = ''
      self.lhm_on = ''
      self.stabilizer_location = geometry_msgs.msg.Point()
      self.shank_location = geometry_msgs.msg.Point()
      self.lhm_location = geometry_msgs.msg.Point()

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3B.pack(_x.shank, _x.lhm, _x.stabilizer))
      _x = self.stabilizer_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.shank_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.lhm_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.stabilizer_location.x, _x.stabilizer_location.y, _x.stabilizer_location.z, _x.shank_location.x, _x.shank_location.y, _x.shank_location.z, _x.lhm_location.x, _x.lhm_location.y, _x.lhm_location.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stabilizer_location is None:
        self.stabilizer_location = geometry_msgs.msg.Point()
      if self.shank_location is None:
        self.shank_location = geometry_msgs.msg.Point()
      if self.lhm_location is None:
        self.lhm_location = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.shank, _x.lhm, _x.stabilizer,) = _struct_3B.unpack(str[start:end])
      self.shank = bool(self.shank)
      self.lhm = bool(self.lhm)
      self.stabilizer = bool(self.stabilizer)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.stabilizer_on = str[start:end].decode('utf-8')
      else:
        self.stabilizer_on = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shank_on = str[start:end].decode('utf-8')
      else:
        self.shank_on = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lhm_on = str[start:end].decode('utf-8')
      else:
        self.lhm_on = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.stabilizer_location.x, _x.stabilizer_location.y, _x.stabilizer_location.z, _x.shank_location.x, _x.shank_location.y, _x.shank_location.z, _x.lhm_location.x, _x.lhm_location.y, _x.lhm_location.z,) = _struct_9d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3B.pack(_x.shank, _x.lhm, _x.stabilizer))
      _x = self.stabilizer_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.shank_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.lhm_on
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_9d.pack(_x.stabilizer_location.x, _x.stabilizer_location.y, _x.stabilizer_location.z, _x.shank_location.x, _x.shank_location.y, _x.shank_location.z, _x.lhm_location.x, _x.lhm_location.y, _x.lhm_location.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stabilizer_location is None:
        self.stabilizer_location = geometry_msgs.msg.Point()
      if self.shank_location is None:
        self.shank_location = geometry_msgs.msg.Point()
      if self.lhm_location is None:
        self.lhm_location = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.shank, _x.lhm, _x.stabilizer,) = _struct_3B.unpack(str[start:end])
      self.shank = bool(self.shank)
      self.lhm = bool(self.lhm)
      self.stabilizer = bool(self.stabilizer)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.stabilizer_on = str[start:end].decode('utf-8')
      else:
        self.stabilizer_on = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shank_on = str[start:end].decode('utf-8')
      else:
        self.shank_on = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lhm_on = str[start:end].decode('utf-8')
      else:
        self.lhm_on = str[start:end]
      _x = self
      start = end
      end += 72
      (_x.stabilizer_location.x, _x.stabilizer_location.y, _x.stabilizer_location.z, _x.shank_location.x, _x.shank_location.y, _x.shank_location.z, _x.lhm_location.x, _x.lhm_location.y, _x.lhm_location.z,) = _struct_9d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3B = struct.Struct("<3B")
_struct_3I = struct.Struct("<3I")
_struct_9d = struct.Struct("<9d")
