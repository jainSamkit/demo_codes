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

class SaveMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_id = null;
      this.height_agl = null;
      this.lng = null;
      this.lat = null;
    }
    else {
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('height_agl')) {
        this.height_agl = initObj.height_agl
      }
      else {
        this.height_agl = 0.0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapRequest
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [height_agl]
    bufferOffset = _serializer.float32(obj.height_agl, buffer, bufferOffset);
    // Serialize message field [lng]
    bufferOffset = _arraySerializer.float32(obj.lng, buffer, bufferOffset, null);
    // Serialize message field [lat]
    bufferOffset = _arraySerializer.float32(obj.lat, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapRequest
    let len;
    let data = new SaveMapRequest(null);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [height_agl]
    data.height_agl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lng]
    data.lng = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lat]
    data.lat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.map_id.length;
    length += 4 * object.lng.length;
    length += 4 * object.lat.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_manager/SaveMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '585ab74f8f195546a3c33d376967fa2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_id
    float32 height_agl
    float32[] lng
    float32[] lat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMapRequest(null);
    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.height_agl !== undefined) {
      resolved.height_agl = msg.height_agl;
    }
    else {
      resolved.height_agl = 0.0
    }

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

    return resolved;
    }
};

class SaveMapResponse {
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
    // Serializes a message object of type SaveMapResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapResponse
    let len;
    let data = new SaveMapResponse(null);
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
    return 'map_manager/SaveMapResponse';
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
    const resolved = new SaveMapResponse(null);
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
  Request: SaveMapRequest,
  Response: SaveMapResponse,
  md5sum() { return '19e2ab991a9960cc2be2f5217abb7783'; },
  datatype() { return 'map_manager/SaveMap'; }
};
