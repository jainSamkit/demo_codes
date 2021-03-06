# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from map_manager/GetMapInfoByNameRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetMapInfoByNameRequest(genpy.Message):
  _md5sum = "d742ddbd5e3e8937162044ae4b300275"
  _type = "map_manager/GetMapInfoByNameRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string map_id
"""
  __slots__ = ['map_id']
  _slot_types = ['string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       map_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetMapInfoByNameRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.map_id is None:
        self.map_id = ''
    else:
      self.map_id = ''

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
      _x = self.map_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_id = str[start:end].decode('utf-8')
      else:
        self.map_id = str[start:end]
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
      _x = self.map_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.map_id = str[start:end].decode('utf-8')
      else:
        self.map_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from map_manager/GetMapInfoByNameResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import map_manager.msg

class GetMapInfoByNameResponse(genpy.Message):
  _md5sum = "e16de195393d31e1bb182bebe2073a24"
  _type = "map_manager/GetMapInfoByNameResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool success
string message
float32[] map_lng
float32[] map_lat
string[] obstacle_ids
Float1DArray[] obstacle_lngs
Float1DArray[] obstacle_lats


================================================================================
MSG: map_manager/Float1DArray
float32[] single_coord
"""
  __slots__ = ['success','message','map_lng','map_lat','obstacle_ids','obstacle_lngs','obstacle_lats']
  _slot_types = ['bool','string','float32[]','float32[]','string[]','map_manager/Float1DArray[]','map_manager/Float1DArray[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,message,map_lng,map_lat,obstacle_ids,obstacle_lngs,obstacle_lats

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetMapInfoByNameResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.message is None:
        self.message = ''
      if self.map_lng is None:
        self.map_lng = []
      if self.map_lat is None:
        self.map_lat = []
      if self.obstacle_ids is None:
        self.obstacle_ids = []
      if self.obstacle_lngs is None:
        self.obstacle_lngs = []
      if self.obstacle_lats is None:
        self.obstacle_lats = []
    else:
      self.success = False
      self.message = ''
      self.map_lng = []
      self.map_lat = []
      self.obstacle_ids = []
      self.obstacle_lngs = []
      self.obstacle_lats = []

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
      buff.write(_get_struct_B().pack(self.success))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.map_lng)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.map_lng))
      length = len(self.map_lat)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.map_lat))
      length = len(self.obstacle_ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_ids:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.obstacle_lngs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_lngs:
        length = len(val1.single_coord)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.single_coord))
      length = len(self.obstacle_lats)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_lats:
        length = len(val1.single_coord)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.single_coord))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.obstacle_lngs is None:
        self.obstacle_lngs = None
      if self.obstacle_lats is None:
        self.obstacle_lats = None
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.map_lng = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.map_lat = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_ids = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.obstacle_ids.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_lngs = []
      for i in range(0, length):
        val1 = map_manager.msg.Float1DArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.single_coord = struct.unpack(pattern, str[start:end])
        self.obstacle_lngs.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_lats = []
      for i in range(0, length):
        val1 = map_manager.msg.Float1DArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.single_coord = struct.unpack(pattern, str[start:end])
        self.obstacle_lats.append(val1)
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
      buff.write(_get_struct_B().pack(self.success))
      _x = self.message
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.map_lng)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.map_lng.tostring())
      length = len(self.map_lat)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.map_lat.tostring())
      length = len(self.obstacle_ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_ids:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.obstacle_lngs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_lngs:
        length = len(val1.single_coord)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.single_coord.tostring())
      length = len(self.obstacle_lats)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacle_lats:
        length = len(val1.single_coord)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.single_coord.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.obstacle_lngs is None:
        self.obstacle_lngs = None
      if self.obstacle_lats is None:
        self.obstacle_lats = None
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8')
      else:
        self.message = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.map_lng = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.map_lat = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_ids = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.obstacle_ids.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_lngs = []
      for i in range(0, length):
        val1 = map_manager.msg.Float1DArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.single_coord = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.obstacle_lngs.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacle_lats = []
      for i in range(0, length):
        val1 = map_manager.msg.Float1DArray()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.single_coord = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.obstacle_lats.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class GetMapInfoByName(object):
  _type          = 'map_manager/GetMapInfoByName'
  _md5sum = '9853cd9476867110697e3e2277194759'
  _request_class  = GetMapInfoByNameRequest
  _response_class = GetMapInfoByNameResponse
