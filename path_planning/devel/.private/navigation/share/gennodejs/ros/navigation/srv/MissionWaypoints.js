// Auto-generated. Do not edit!

// (in-package navigation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MissionWaypointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lng = null;
      this.lat = null;
      this.height_agl = null;
    }
    else {
      if (initObj.hasOwnProperty('lng')) {
        this.lng = initObj.lng
      }
      else {
        this.lng = [];
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = [];
      }
      if (initObj.hasOwnProperty('height_agl')) {
        this.height_agl = initObj.height_agl
      }
      else {
        this.height_agl = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionWaypointsRequest
    // Serialize message field [lng]
    bufferOffset = _arraySerializer.float32(obj.lng, buffer, bufferOffset, null);
    // Serialize message field [lat]
    bufferOffset = _arraySerializer.float32(obj.lat, buffer, bufferOffset, null);
    // Serialize message field [height_agl]
    bufferOffset = _arraySerializer.float32(obj.height_agl, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWaypointsRequest
    let len;
    let data = new MissionWaypointsRequest(null);
    // Deserialize message field [lng]
    data.lng = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lat]
    data.lat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height_agl]
    data.height_agl = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.lng.length;
    length += 4 * object.lat.length;
    length += 4 * object.height_agl.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'navigation/MissionWaypointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04691daa6acdeb313a106d2a5de0c411';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] lng
    float32[] lat
    float32[] height_agl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionWaypointsRequest(null);
    if (msg.lng !== undefined) {
      resolved.lng = msg.lng;
    }
    else {
      resolved.lng = []
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = []
    }

    if (msg.height_agl !== undefined) {
      resolved.height_agl = msg.height_agl;
    }
    else {
      resolved.height_agl = []
    }

    return resolved;
    }
};

class MissionWaypointsResponse {
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
    // Serializes a message object of type MissionWaypointsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionWaypointsResponse
    let len;
    let data = new MissionWaypointsResponse(null);
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
    return 'navigation/MissionWaypointsResponse';
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
    const resolved = new MissionWaypointsResponse(null);
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
  Request: MissionWaypointsRequest,
  Response: MissionWaypointsResponse,
  md5sum() { return '6817029e547d21fe2ace732a69b3a95f'; },
  datatype() { return 'navigation/MissionWaypoints'; }
};
