// Auto-generated. Do not edit!

// (in-package map_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Float1DArray = require('../msg/Float1DArray.js');

//-----------------------------------------------------------

class GetMapInfoByNameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapInfoByNameRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapInfoByNameRequest
    let len;
    let data = new GetMapInfoByNameRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/GetMapInfoByNameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd742ddbd5e3e8937162044ae4b300275';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapInfoByNameRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    return resolved;
    }
};

class GetMapInfoByNameResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.map_lng = null;
      this.map_lat = null;
      this.obstacle_ids = null;
      this.obstacle_lngs = null;
      this.obstacle_lats = null;
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
      if (initObj.hasOwnProperty('map_lng')) {
        this.map_lng = initObj.map_lng
      }
      else {
        this.map_lng = [];
      }
      if (initObj.hasOwnProperty('map_lat')) {
        this.map_lat = initObj.map_lat
      }
      else {
        this.map_lat = [];
      }
      if (initObj.hasOwnProperty('obstacle_ids')) {
        this.obstacle_ids = initObj.obstacle_ids
      }
      else {
        this.obstacle_ids = [];
      }
      if (initObj.hasOwnProperty('obstacle_lngs')) {
        this.obstacle_lngs = initObj.obstacle_lngs
      }
      else {
        this.obstacle_lngs = [];
      }
      if (initObj.hasOwnProperty('obstacle_lats')) {
        this.obstacle_lats = initObj.obstacle_lats
      }
      else {
        this.obstacle_lats = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapInfoByNameResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [map_lng]
    bufferOffset = _arraySerializer.float32(obj.map_lng, buffer, bufferOffset, null);
    // Serialize message field [map_lat]
    bufferOffset = _arraySerializer.float32(obj.map_lat, buffer, bufferOffset, null);
    // Serialize message field [obstacle_ids]
    bufferOffset = _arraySerializer.string(obj.obstacle_ids, buffer, bufferOffset, null);
    // Serialize message field [obstacle_lngs]
    // Serialize the length for message field [obstacle_lngs]
    bufferOffset = _serializer.uint32(obj.obstacle_lngs.length, buffer, bufferOffset);
    obj.obstacle_lngs.forEach((val) => {
      bufferOffset = Float1DArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacle_lats]
    // Serialize the length for message field [obstacle_lats]
    bufferOffset = _serializer.uint32(obj.obstacle_lats.length, buffer, bufferOffset);
    obj.obstacle_lats.forEach((val) => {
      bufferOffset = Float1DArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapInfoByNameResponse
    let len;
    let data = new GetMapInfoByNameResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_lng]
    data.map_lng = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [map_lat]
    data.map_lat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obstacle_ids]
    data.obstacle_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [obstacle_lngs]
    // Deserialize array length for message field [obstacle_lngs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_lngs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_lngs[i] = Float1DArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle_lats]
    // Deserialize array length for message field [obstacle_lats]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_lats = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_lats[i] = Float1DArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += 4 * object.map_lng.length;
    length += 4 * object.map_lat.length;
    object.obstacle_ids.forEach((val) => {
      length += 4 + val.length;
    });
    object.obstacle_lngs.forEach((val) => {
      length += Float1DArray.getMessageSize(val);
    });
    object.obstacle_lats.forEach((val) => {
      length += Float1DArray.getMessageSize(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/GetMapInfoByNameResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e16de195393d31e1bb182bebe2073a24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    float32[] map_lng
    float32[] map_lat
    string[] obstacle_ids
    Float1DArray[] obstacle_lngs
    Float1DArray[] obstacle_lats
    
    
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
    const resolved = new GetMapInfoByNameResponse(null);
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

    if (msg.map_lng !== undefined) {
      resolved.map_lng = msg.map_lng;
    }
    else {
      resolved.map_lng = []
    }

    if (msg.map_lat !== undefined) {
      resolved.map_lat = msg.map_lat;
    }
    else {
      resolved.map_lat = []
    }

    if (msg.obstacle_ids !== undefined) {
      resolved.obstacle_ids = msg.obstacle_ids;
    }
    else {
      resolved.obstacle_ids = []
    }

    if (msg.obstacle_lngs !== undefined) {
      resolved.obstacle_lngs = new Array(msg.obstacle_lngs.length);
      for (let i = 0; i < resolved.obstacle_lngs.length; ++i) {
        resolved.obstacle_lngs[i] = Float1DArray.Resolve(msg.obstacle_lngs[i]);
      }
    }
    else {
      resolved.obstacle_lngs = []
    }

    if (msg.obstacle_lats !== undefined) {
      resolved.obstacle_lats = new Array(msg.obstacle_lats.length);
      for (let i = 0; i < resolved.obstacle_lats.length; ++i) {
        resolved.obstacle_lats[i] = Float1DArray.Resolve(msg.obstacle_lats[i]);
      }
    }
    else {
      resolved.obstacle_lats = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapInfoByNameRequest,
  Response: GetMapInfoByNameResponse,
  md5sum() { return '9853cd9476867110697e3e2277194759'; },
  datatype() { return 'map_manager/GetMapInfoByName'; }
};
