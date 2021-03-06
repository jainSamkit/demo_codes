# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: carla_pack.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
from google.protobuf import descriptor_pb2
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='carla_pack.proto',
  package='',
  serialized_pb=_b('\n\x10\x63\x61rla_pack.proto\"&\n\x11RequestNewEpisode\x12\x11\n\tinit_file\x18\x01 \x01(\x0c\"6\n\x0c\x45pisodeStart\x12\x13\n\x0bstart_index\x18\x01 \x01(\x05\x12\x11\n\tend_index\x18\x02 \x01(\x05\"Y\n\x07\x43ontrol\x12\r\n\x05steer\x18\x01 \x01(\x02\x12\x0b\n\x03gas\x18\x02 \x01(\x02\x12\r\n\x05\x62rake\x18\x03 \x01(\x02\x12\x12\n\nhand_brake\x18\x04 \x01(\x08\x12\x0f\n\x07reverse\x18\x05 \x01(\x08\"\x1a\n\x05Scene\x12\x11\n\tpositions\x18\x01 \x01(\x0c\"\x1d\n\x0c\x45pisodeReady\x12\r\n\x05ready\x18\x01 \x01(\x08\"\x8b\x04\n\x06Reward\x12\x10\n\x08player_x\x18\x01 \x01(\x02\x12\x10\n\x08player_y\x18\x02 \x01(\x02\x12\r\n\x05speed\x18\x03 \x01(\x02\x12\x15\n\rcollision_gen\x18\x04 \x01(\x02\x12\x15\n\rcollision_ped\x18\x05 \x01(\x02\x12\x15\n\rcollision_car\x18\x06 \x01(\x02\x12\x16\n\x0eroad_intersect\x18\x07 \x01(\x02\x12\x1a\n\x12sidewalk_intersect\x18\x08 \x01(\x02\x12\x16\n\x0e\x61\x63\x63\x65leration_x\x18\t \x01(\x02\x12\x16\n\x0e\x61\x63\x63\x65leration_y\x18\n \x01(\x02\x12\x16\n\x0e\x61\x63\x63\x65leration_z\x18\x0b \x01(\x02\x12\x1a\n\x12platform_timestamp\x18\x0c \x01(\x05\x12\x16\n\x0egame_timestamp\x18\r \x01(\x05\x12\r\n\x05ori_x\x18\x0e \x01(\x02\x12\r\n\x05ori_y\x18\x0f \x01(\x02\x12\r\n\x05ori_z\x18\x10 \x01(\x02\x12\x13\n\x0bimage_sizes\x18\x11 \x01(\x0c\x12\x19\n\x11\x66inal_image_sizes\x18\x12 \x01(\x0c\x12\x13\n\x0b\x64\x65pth_sizes\x18\x13 \x01(\x0c\x12\x1a\n\x12semantic_seg_sizes\x18\x14 \x01(\x0c\x12\x0e\n\x06images\x18\x15 \x01(\x0c\x12\x14\n\x0c\x66inal_images\x18\x16 \x01(\x0c\x12\x0e\n\x06\x64\x65pths\x18\x17 \x01(\x0c\x12\x15\n\rsemantic_segs\x18\x18 \x01(\x0c')
)
_sym_db.RegisterFileDescriptor(DESCRIPTOR)




_REQUESTNEWEPISODE = _descriptor.Descriptor(
  name='RequestNewEpisode',
  full_name='RequestNewEpisode',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='init_file', full_name='RequestNewEpisode.init_file', index=0,
      number=1, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=20,
  serialized_end=58,
)


_EPISODESTART = _descriptor.Descriptor(
  name='EpisodeStart',
  full_name='EpisodeStart',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='start_index', full_name='EpisodeStart.start_index', index=0,
      number=1, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='end_index', full_name='EpisodeStart.end_index', index=1,
      number=2, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=60,
  serialized_end=114,
)


_CONTROL = _descriptor.Descriptor(
  name='Control',
  full_name='Control',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='steer', full_name='Control.steer', index=0,
      number=1, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='gas', full_name='Control.gas', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='brake', full_name='Control.brake', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='hand_brake', full_name='Control.hand_brake', index=3,
      number=4, type=8, cpp_type=7, label=1,
      has_default_value=False, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='reverse', full_name='Control.reverse', index=4,
      number=5, type=8, cpp_type=7, label=1,
      has_default_value=False, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=116,
  serialized_end=205,
)


_SCENE = _descriptor.Descriptor(
  name='Scene',
  full_name='Scene',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='positions', full_name='Scene.positions', index=0,
      number=1, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=207,
  serialized_end=233,
)


_EPISODEREADY = _descriptor.Descriptor(
  name='EpisodeReady',
  full_name='EpisodeReady',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='ready', full_name='EpisodeReady.ready', index=0,
      number=1, type=8, cpp_type=7, label=1,
      has_default_value=False, default_value=False,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=235,
  serialized_end=264,
)


_REWARD = _descriptor.Descriptor(
  name='Reward',
  full_name='Reward',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='player_x', full_name='Reward.player_x', index=0,
      number=1, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='player_y', full_name='Reward.player_y', index=1,
      number=2, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='speed', full_name='Reward.speed', index=2,
      number=3, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='collision_gen', full_name='Reward.collision_gen', index=3,
      number=4, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='collision_ped', full_name='Reward.collision_ped', index=4,
      number=5, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='collision_car', full_name='Reward.collision_car', index=5,
      number=6, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='road_intersect', full_name='Reward.road_intersect', index=6,
      number=7, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='sidewalk_intersect', full_name='Reward.sidewalk_intersect', index=7,
      number=8, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='acceleration_x', full_name='Reward.acceleration_x', index=8,
      number=9, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='acceleration_y', full_name='Reward.acceleration_y', index=9,
      number=10, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='acceleration_z', full_name='Reward.acceleration_z', index=10,
      number=11, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='platform_timestamp', full_name='Reward.platform_timestamp', index=11,
      number=12, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='game_timestamp', full_name='Reward.game_timestamp', index=12,
      number=13, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ori_x', full_name='Reward.ori_x', index=13,
      number=14, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ori_y', full_name='Reward.ori_y', index=14,
      number=15, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='ori_z', full_name='Reward.ori_z', index=15,
      number=16, type=2, cpp_type=6, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='image_sizes', full_name='Reward.image_sizes', index=16,
      number=17, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='final_image_sizes', full_name='Reward.final_image_sizes', index=17,
      number=18, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='depth_sizes', full_name='Reward.depth_sizes', index=18,
      number=19, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='semantic_seg_sizes', full_name='Reward.semantic_seg_sizes', index=19,
      number=20, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='images', full_name='Reward.images', index=20,
      number=21, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='final_images', full_name='Reward.final_images', index=21,
      number=22, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='depths', full_name='Reward.depths', index=22,
      number=23, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
    _descriptor.FieldDescriptor(
      name='semantic_segs', full_name='Reward.semantic_segs', index=23,
      number=24, type=12, cpp_type=9, label=1,
      has_default_value=False, default_value=_b(""),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      options=None),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  options=None,
  is_extendable=False,
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=267,
  serialized_end=790,
)

DESCRIPTOR.message_types_by_name['RequestNewEpisode'] = _REQUESTNEWEPISODE
DESCRIPTOR.message_types_by_name['EpisodeStart'] = _EPISODESTART
DESCRIPTOR.message_types_by_name['Control'] = _CONTROL
DESCRIPTOR.message_types_by_name['Scene'] = _SCENE
DESCRIPTOR.message_types_by_name['EpisodeReady'] = _EPISODEREADY
DESCRIPTOR.message_types_by_name['Reward'] = _REWARD

RequestNewEpisode = _reflection.GeneratedProtocolMessageType('RequestNewEpisode', (_message.Message,), dict(
  DESCRIPTOR = _REQUESTNEWEPISODE,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:RequestNewEpisode)
  ))
_sym_db.RegisterMessage(RequestNewEpisode)

EpisodeStart = _reflection.GeneratedProtocolMessageType('EpisodeStart', (_message.Message,), dict(
  DESCRIPTOR = _EPISODESTART,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:EpisodeStart)
  ))
_sym_db.RegisterMessage(EpisodeStart)

Control = _reflection.GeneratedProtocolMessageType('Control', (_message.Message,), dict(
  DESCRIPTOR = _CONTROL,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:Control)
  ))
_sym_db.RegisterMessage(Control)

Scene = _reflection.GeneratedProtocolMessageType('Scene', (_message.Message,), dict(
  DESCRIPTOR = _SCENE,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:Scene)
  ))
_sym_db.RegisterMessage(Scene)

EpisodeReady = _reflection.GeneratedProtocolMessageType('EpisodeReady', (_message.Message,), dict(
  DESCRIPTOR = _EPISODEREADY,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:EpisodeReady)
  ))
_sym_db.RegisterMessage(EpisodeReady)

Reward = _reflection.GeneratedProtocolMessageType('Reward', (_message.Message,), dict(
  DESCRIPTOR = _REWARD,
  __module__ = 'carla_pack_pb2'
  # @@protoc_insertion_point(class_scope:Reward)
  ))
_sym_db.RegisterMessage(Reward)


# @@protoc_insertion_point(module_scope)
