// Auto-generated. Do not edit!

// (in-package map_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Float1DArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.single_coord = null;
    }
    else {
      if (initObj.hasOwnProperty('single_coord')) {
        this.single_coord = initObj.single_coord
      }
      else {
        this.single_coord = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Float1DArray
    // Serialize message field [single_coord]
    bufferOffset = _arraySerializer.float32(obj.single_coord, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Float1DArray
    let len;
    let data = new Float1DArray(null);
    // Deserialize message field [single_coord]
    data.single_coord = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.single_coord.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'map_manager/Float1DArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1426ab7ee5dd52e03f7484660624498e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] single_coord
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Float1DArray(null);
    if (msg.single_coord !== undefined) {
      resolved.single_coord = msg.single_coord;
    }
    else {
      resolved.single_coord = []
    }

    return resolved;
    }
};

module.exports = Float1DArray;
