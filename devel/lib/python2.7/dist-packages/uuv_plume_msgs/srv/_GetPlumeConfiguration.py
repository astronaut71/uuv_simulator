# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uuv_plume_msgs/GetPlumeConfigurationRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetPlumeConfigurationRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "uuv_plume_msgs/GetPlumeConfigurationRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Copyright (c) 2016 The UUV Simulator Authors.
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPlumeConfigurationRequest, self).__init__(*args, **kwds)

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
      pass
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
      pass
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
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uuv_plume_msgs/GetPlumeConfigurationResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class GetPlumeConfigurationResponse(genpy.Message):
  _md5sum = "eb1615b61ec9b80c7981906c8ffbab07"
  _type = "uuv_plume_msgs/GetPlumeConfigurationResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string model_name
int32 n_points
int32 max_particles_per_iter
geometry_msgs/Point source
float64 x_min
float64 x_max
float64 y_min
float64 y_max
float64 z_min
float64 z_max


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['model_name','n_points','max_particles_per_iter','source','x_min','x_max','y_min','y_max','z_min','z_max']
  _slot_types = ['string','int32','int32','geometry_msgs/Point','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       model_name,n_points,max_particles_per_iter,source,x_min,x_max,y_min,y_max,z_min,z_max

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetPlumeConfigurationResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.model_name is None:
        self.model_name = ''
      if self.n_points is None:
        self.n_points = 0
      if self.max_particles_per_iter is None:
        self.max_particles_per_iter = 0
      if self.source is None:
        self.source = geometry_msgs.msg.Point()
      if self.x_min is None:
        self.x_min = 0.
      if self.x_max is None:
        self.x_max = 0.
      if self.y_min is None:
        self.y_min = 0.
      if self.y_max is None:
        self.y_max = 0.
      if self.z_min is None:
        self.z_min = 0.
      if self.z_max is None:
        self.z_max = 0.
    else:
      self.model_name = ''
      self.n_points = 0
      self.max_particles_per_iter = 0
      self.source = geometry_msgs.msg.Point()
      self.x_min = 0.
      self.x_max = 0.
      self.y_min = 0.
      self.y_max = 0.
      self.z_min = 0.
      self.z_max = 0.

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
      _x = self.model_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i9d().pack(_x.n_points, _x.max_particles_per_iter, _x.source.x, _x.source.y, _x.source.z, _x.x_min, _x.x_max, _x.y_min, _x.y_max, _x.z_min, _x.z_max))
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
      if self.source is None:
        self.source = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.model_name = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.n_points, _x.max_particles_per_iter, _x.source.x, _x.source.y, _x.source.z, _x.x_min, _x.x_max, _x.y_min, _x.y_max, _x.z_min, _x.z_max,) = _get_struct_2i9d().unpack(str[start:end])
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
      _x = self.model_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i9d().pack(_x.n_points, _x.max_particles_per_iter, _x.source.x, _x.source.y, _x.source.z, _x.x_min, _x.x_max, _x.y_min, _x.y_max, _x.z_min, _x.z_max))
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
      if self.source is None:
        self.source = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.model_name = str[start:end]
      _x = self
      start = end
      end += 80
      (_x.n_points, _x.max_particles_per_iter, _x.source.x, _x.source.y, _x.source.z, _x.x_min, _x.x_max, _x.y_min, _x.y_max, _x.z_min, _x.z_max,) = _get_struct_2i9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i9d = None
def _get_struct_2i9d():
    global _struct_2i9d
    if _struct_2i9d is None:
        _struct_2i9d = struct.Struct("<2i9d")
    return _struct_2i9d
class GetPlumeConfiguration(object):
  _type          = 'uuv_plume_msgs/GetPlumeConfiguration'
  _md5sum = 'eb1615b61ec9b80c7981906c8ffbab07'
  _request_class  = GetPlumeConfigurationRequest
  _response_class = GetPlumeConfigurationResponse
