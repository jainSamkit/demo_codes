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


//-----------------------------------------------------------

class StartMissionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.start_lng = null;
      this.start_lat = null;
      this.target_lng = null;
      this.target_lat = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('start_lng')) {
        this.start_lng = initObj.start_lng
      }
      else {
        this.start_lng = 0.0;
      }
      if (initObj.hasOwnProperty('start_lat')) {
        this.start_lat = initObj.start_lat
      }
      else {
        this.start_lat = 0.0;
      }
      if (initObj.hasOwnProperty('target_lng')) {
        this.target_lng = initObj.target_lng
      }
      else {
        this.target_lng = 0.0;
      }
      if (initObj.hasOwnProperty('target_lat')) {
        this.target_lat = initObj.target_lat
      }
      else {
        this.target_lat = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartMissionRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [start_lng]
    bufferOffset = _serializer.float32(obj.start_lng, buffer, bufferOffset);
    // Serialize message field [start_lat]
    bufferOffset = _serializer.float32(obj.start_lat, buffer, bufferOffset);
    // Serialize message field [target_lng]
    bufferOffset = _serializer.float32(obj.target_lng, buffer, bufferOffset);
    // Serialize message field [target_lat]
    bufferOffset = _serializer.float32(obj.target_lat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMissionRequest
    let len;
    let data = new StartMissionRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_lng]
    data.start_lng = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_lat]
    data.start_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_lng]
    data.target_lng = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_lat]
    data.target_lat = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/StartMissionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91f3b085e01d6a7d43fd25e6b14ec944';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    float32 start_lng
    float32 start_lat
    float32 target_lng
    float32 target_lat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartMissionRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.start_lng !== undefined) {
      resolved.start_lng = msg.start_lng;
    }
    else {
      resolved.start_lng = 0.0
    }

    if (msg.start_lat !== undefined) {
      resolved.start_lat = msg.start_lat;
    }
    else {
      resolved.start_lat = 0.0
    }

    if (msg.target_lng !== undefined) {
      resolved.target_lng = msg.target_lng;
    }
    else {
      resolved.target_lng = 0.0
    }

    if (msg.target_lat !== undefined) {
      resolved.target_lat = msg.target_lat;
    }
    else {
      resolved.target_lat = 0.0
    }

    return resolved;
    }
};

class StartMissionResponse {
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
    // Serializes a message object of type StartMissionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartMissionResponse
    let len;
    let data = new StartMissionResponse(null);
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
    return 'map_manager/StartMissionResponse';
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
    const resolved = new StartMissionResponse(null);
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
  Request: StartMissionRequest,
  Response: StartMissionResponse,
  md5sum() { return '55f40e5bb59a86c5c866c1e3dc5d2ad5'; },
  datatype() { return 'map_manager/StartMission'; }
};
