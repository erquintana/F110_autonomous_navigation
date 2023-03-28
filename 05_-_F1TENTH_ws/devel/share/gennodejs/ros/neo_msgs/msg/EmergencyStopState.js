// Auto-generated. Do not edit!

// (in-package neo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EmergencyStopState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.emergency_button_stop = null;
      this.scanner_stop = null;
      this.emergency_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('emergency_button_stop')) {
        this.emergency_button_stop = initObj.emergency_button_stop
      }
      else {
        this.emergency_button_stop = false;
      }
      if (initObj.hasOwnProperty('scanner_stop')) {
        this.scanner_stop = initObj.scanner_stop
      }
      else {
        this.scanner_stop = false;
      }
      if (initObj.hasOwnProperty('emergency_state')) {
        this.emergency_state = initObj.emergency_state
      }
      else {
        this.emergency_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmergencyStopState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [emergency_button_stop]
    bufferOffset = _serializer.bool(obj.emergency_button_stop, buffer, bufferOffset);
    // Serialize message field [scanner_stop]
    bufferOffset = _serializer.bool(obj.scanner_stop, buffer, bufferOffset);
    // Serialize message field [emergency_state]
    bufferOffset = _serializer.int16(obj.emergency_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmergencyStopState
    let len;
    let data = new EmergencyStopState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency_button_stop]
    data.emergency_button_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scanner_stop]
    data.scanner_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_state]
    data.emergency_state = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neo_msgs/EmergencyStopState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29fd87604c9bdbc72cb73a515633cc11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message holds the emergency stop (EMStop) status of the robot. It detects wether an EMStop is caused by the safety laserscanner or the emergency stop buttons. Moreover, it gives signalizes wether the EMStop was confirmed (after Button press stop) and the system is free again.
    
    std_msgs/Header header
    
    # Possible EMStop States
    int16 EMFREE = 0 		# system operatign normal
    int16 EMSTOP = 1 		# emergency stop is active (Button pressed; obstacle in safety field of scanner)
    int16 EMCONFIRMED = 2 		# emergency stop was confirmed system is reinitializing and going back to normal
    
    bool emergency_button_stop	# true = emergency stop signal is issued by button pressed
    bool scanner_stop		# true = emergency stop signal is issued by scanner
    int16 emergency_state		# state (including confimation by key-switch), values see above
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmergencyStopState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.emergency_button_stop !== undefined) {
      resolved.emergency_button_stop = msg.emergency_button_stop;
    }
    else {
      resolved.emergency_button_stop = false
    }

    if (msg.scanner_stop !== undefined) {
      resolved.scanner_stop = msg.scanner_stop;
    }
    else {
      resolved.scanner_stop = false
    }

    if (msg.emergency_state !== undefined) {
      resolved.emergency_state = msg.emergency_state;
    }
    else {
      resolved.emergency_state = 0
    }

    return resolved;
    }
};

// Constants for message
EmergencyStopState.Constants = {
  EMFREE: 0,
  EMSTOP: 1,
  EMCONFIRMED: 2,
}

module.exports = EmergencyStopState;
