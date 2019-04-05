// Auto-generated. Do not edit!

// (in-package map_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Float1DArray = require('../msg/Float1DArray.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveObstaclesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.obstacle_ids = null;
      this.lngs = null;
      this.lats = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('obstacle_ids')) {
        this.obstacle_ids = initObj.obstacle_ids
      }
      else {
        this.obstacle_ids = [];
      }
      if (initObj.hasOwnProperty('lngs')) {
        this.lngs = initObj.lngs
      }
      else {
        this.lngs = [];
      }
      if (initObj.hasOwnProperty('lats')) {
        this.lats = initObj.lats
      }
      else {
        this.lats = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveObstaclesRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [obstacle_ids]
    bufferOffset = _arraySerializer.string(obj.obstacle_ids, buffer, bufferOffset, null);
    // Serialize message field [lngs]
    // Serialize the length for message field [lngs]
    bufferOffset = _serializer.uint32(obj.lngs.length, buffer, bufferOffset);
    obj.lngs.forEach((val) => {
      bufferOffset = Float1DArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lats]
    // Serialize the length for message field [lats]
    bufferOffset = _serializer.uint32(obj.lats.length, buffer, bufferOffset);
    obj.lats.forEach((val) => {
      bufferOffset = Float1DArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveObstaclesRequest
    let len;
    let data = new SaveObstaclesRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obstacle_ids]
    data.obstacle_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [lngs]
    // Deserialize array length for message field [lngs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lngs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lngs[i] = Float1DArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lats]
    // Deserialize array length for message field [lats]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lats = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lats[i] = Float1DArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    object.obstacle_ids.forEach((val) => {
      length += 4 + val.length;
    });
    object.lngs.forEach((val) => {
      length += Float1DArray.getMessageSize(val);
    });
    object.lats.forEach((val) => {
      length += Float1DArray.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/SaveObstaclesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63802fd267b282523253c0b9c6d7bc9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    string[] obstacle_ids
    Float1DArray[] lngs
    Float1DArray[] lats
    
    ================================================================================
    MSG: map_manager/Float1DArray
    float32[] single_coord
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveObstaclesRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.obstacle_ids !== undefined) {
      resolved.obstacle_ids = msg.obstacle_ids;
    }
    else {
      resolved.obstacle_ids = []
    }

    if (msg.lngs !== undefined) {
      resolved.lngs = new Array(msg.lngs.length);
      for (let i = 0; i < resolved.lngs.length; ++i) {
        resolved.lngs[i] = Float1DArray.Resolve(msg.lngs[i]);
      }
    }
    else {
      resolved.lngs = []
    }

    if (msg.lats !== undefined) {
      resolved.lats = new Array(msg.lats.length);
      for (let i = 0; i < resolved.lats.length; ++i) {
        resolved.lats[i] = Float1DArray.Resolve(msg.lats[i]);
      }
    }
    else {
      resolved.lats = []
    }

    return resolved;
    }
};

class SaveObstaclesResponse {
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
    // Serializes a message object of type SaveObstaclesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveObstaclesResponse
    let len;
    let data = new SaveObstaclesResponse(null);
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
    return 'map_manager/SaveObstaclesResponse';
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
    const resolved = new SaveObstaclesResponse(null);
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
  Request: SaveObstaclesRequest,
  Response: SaveObstaclesResponse,
  md5sum() { return 'abd0dab24fc4e5b35491883975867c94'; },
  datatype() { return 'map_manager/SaveObstacles'; }
};
