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

class CreateGraphRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.roadmap_growth_time = null;
      this.roadmap_expansion_time = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('roadmap_growth_time')) {
        this.roadmap_growth_time = initObj.roadmap_growth_time
      }
      else {
        this.roadmap_growth_time = 0;
      }
      if (initObj.hasOwnProperty('roadmap_expansion_time')) {
        this.roadmap_expansion_time = initObj.roadmap_expansion_time
      }
      else {
        this.roadmap_expansion_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateGraphRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [roadmap_growth_time]
    bufferOffset = _serializer.int8(obj.roadmap_growth_time, buffer, bufferOffset);
    // Serialize message field [roadmap_expansion_time]
    bufferOffset = _serializer.int8(obj.roadmap_expansion_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateGraphRequest
    let len;
    let data = new CreateGraphRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roadmap_growth_time]
    data.roadmap_growth_time = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [roadmap_expansion_time]
    data.roadmap_expansion_time = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_planner/CreateGraphRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db2531742554cd58a335cb0b94ae809f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    int8 roadmap_growth_time
    int8 roadmap_expansion_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateGraphRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.roadmap_growth_time !== undefined) {
      resolved.roadmap_growth_time = msg.roadmap_growth_time;
    }
    else {
      resolved.roadmap_growth_time = 0
    }

    if (msg.roadmap_expansion_time !== undefined) {
      resolved.roadmap_expansion_time = msg.roadmap_expansion_time;
    }
    else {
      resolved.roadmap_expansion_time = 0
    }

    return resolved;
    }
};

class CreateGraphResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
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
    // Serializes a message object of type CreateGraphResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateGraphResponse
    let len;
    let data = new CreateGraphResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'path_planner/CreateGraphResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateGraphResponse(null);
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
  Request: CreateGraphRequest,
  Response: CreateGraphResponse,
  md5sum() { return 'f5d270e8ce37df345157a107cd8c1f39'; },
  datatype() { return 'path_planner/CreateGraph'; }
};
