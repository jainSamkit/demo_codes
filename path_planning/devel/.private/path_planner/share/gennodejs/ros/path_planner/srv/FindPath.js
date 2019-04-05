// Auto-generated. Do not edit!

// (in-package path_planner.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FindPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.start_position = null;
      this.target_position = null;
      this.height_agl = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('start_position')) {
        this.start_position = initObj.start_position
      }
      else {
        this.start_position = [];
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = [];
      }
      if (initObj.hasOwnProperty('height_agl')) {
        this.height_agl = initObj.height_agl
      }
      else {
        this.height_agl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindPathRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [start_position]
    bufferOffset = _arraySerializer.float32(obj.start_position, buffer, bufferOffset, null);
    // Serialize message field [target_position]
    bufferOffset = _arraySerializer.float32(obj.target_position, buffer, bufferOffset, null);
    // Serialize message field [height_agl]
    bufferOffset = _serializer.float32(obj.height_agl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindPathRequest
    let len;
    let data = new FindPathRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_position]
    data.start_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_position]
    data.target_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height_agl]
    data.height_agl = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    length += 4 * object.start_position.length;
    length += 4 * object.target_position.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_planner/FindPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fec1e25ef4262fb3682c2ac02a99326b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    float32[] start_position
    float32[] target_position
    float32 height_agl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindPathRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.start_position !== undefined) {
      resolved.start_position = msg.start_position;
    }
    else {
      resolved.start_position = []
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = msg.target_position;
    }
    else {
      resolved.target_position = []
    }

    if (msg.height_agl !== undefined) {
      resolved.height_agl = msg.height_agl;
    }
    else {
      resolved.height_agl = 0.0
    }

    return resolved;
    }
};

class FindPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_x = null;
      this.pos_y = null;
      this.height_agl = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = [];
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = [];
      }
      if (initObj.hasOwnProperty('height_agl')) {
        this.height_agl = initObj.height_agl
      }
      else {
        this.height_agl = 0.0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindPathResponse
    // Serialize message field [pos_x]
    bufferOffset = _arraySerializer.float32(obj.pos_x, buffer, bufferOffset, null);
    // Serialize message field [pos_y]
    bufferOffset = _arraySerializer.float32(obj.pos_y, buffer, bufferOffset, null);
    // Serialize message field [height_agl]
    bufferOffset = _serializer.float32(obj.height_agl, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindPathResponse
    let len;
    let data = new FindPathResponse(null);
    // Deserialize message field [pos_x]
    data.pos_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pos_y]
    data.pos_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height_agl]
    data.height_agl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos_x.length;
    length += 4 * object.pos_y.length;
    length += object.message.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_planner/FindPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '347017d3664ecf5abcf70677e0f54546';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pos_x
    float32[] pos_y
    float32 height_agl
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindPathResponse(null);
    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = []
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = []
    }

    if (msg.height_agl !== undefined) {
      resolved.height_agl = msg.height_agl;
    }
    else {
      resolved.height_agl = 0.0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: FindPathRequest,
  Response: FindPathResponse,
  md5sum() { return 'fbf4be726dfae8f25934ac5e341e5c84'; },
  datatype() { return 'path_planner/FindPath'; }
};
