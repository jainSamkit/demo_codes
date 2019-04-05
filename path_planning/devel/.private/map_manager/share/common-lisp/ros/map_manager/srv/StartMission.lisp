; Auto-generated. Do not edit!


(cl:in-package map_manager-srv)


;//! \htmlinclude StartMission-request.msg.html

(cl:defclass <StartMission-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (start_lng
    :reader start_lng
    :initarg :start_lng
    :type cl:float
    :initform 0.0)
   (start_lat
    :reader start_lat
    :initarg :start_lat
    :type cl:float
    :initform 0.0)
   (target_lng
    :reader target_lng
    :initarg :target_lng
    :type cl:float
    :initform 0.0)
   (target_lat
    :reader target_lat
    :initarg :target_lat
    :type cl:float
    :initform 0.0))
)

(cl:defclass StartMission-request (<StartMission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<StartMission-request> is deprecated: use map_manager-srv:StartMission-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_id-val is deprecated.  Use map_manager-srv:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'start_lng-val :lambda-list '(m))
(cl:defmethod start_lng-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:start_lng-val is deprecated.  Use map_manager-srv:start_lng instead.")
  (start_lng m))

(cl:ensure-generic-function 'start_lat-val :lambda-list '(m))
(cl:defmethod start_lat-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:start_lat-val is deprecated.  Use map_manager-srv:start_lat instead.")
  (start_lat m))

(cl:ensure-generic-function 'target_lng-val :lambda-list '(m))
(cl:defmethod target_lng-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:target_lng-val is deprecated.  Use map_manager-srv:target_lng instead.")
  (target_lng m))

(cl:ensure-generic-function 'target_lat-val :lambda-list '(m))
(cl:defmethod target_lat-val ((m <StartMission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:target_lat-val is deprecated.  Use map_manager-srv:target_lat instead.")
  (target_lat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-request>) ostream)
  "Serializes a message object of type '<StartMission-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-request>) istream)
  "Deserializes a message object of type '<StartMission-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_lng) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_lng) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_lat) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-request>)))
  "Returns string type for a service object of type '<StartMission-request>"
  "map_manager/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-request)))
  "Returns string type for a service object of type 'StartMission-request"
  "map_manager/StartMissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-request>)))
  "Returns md5sum for a message object of type '<StartMission-request>"
  "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-request)))
  "Returns md5sum for a message object of type 'StartMission-request"
  "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-request>)))
  "Returns full string definition for message of type '<StartMission-request>"
  (cl:format cl:nil "string map_id~%float32 start_lng~%float32 start_lat~%float32 target_lng~%float32 target_lat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-request)))
  "Returns full string definition for message of type 'StartMission-request"
  (cl:format cl:nil "string map_id~%float32 start_lng~%float32 start_lat~%float32 target_lng~%float32 target_lat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-request
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':start_lng (start_lng msg))
    (cl:cons ':start_lat (start_lat msg))
    (cl:cons ':target_lng (target_lng msg))
    (cl:cons ':target_lat (target_lat msg))
))
;//! \htmlinclude StartMission-response.msg.html

(cl:defclass <StartMission-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StartMission-response (<StartMission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartMission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartMission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<StartMission-response> is deprecated: use map_manager-srv:StartMission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:success-val is deprecated.  Use map_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StartMission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:message-val is deprecated.  Use map_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartMission-response>) ostream)
  "Serializes a message object of type '<StartMission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartMission-response>) istream)
  "Deserializes a message object of type '<StartMission-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartMission-response>)))
  "Returns string type for a service object of type '<StartMission-response>"
  "map_manager/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission-response)))
  "Returns string type for a service object of type 'StartMission-response"
  "map_manager/StartMissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartMission-response>)))
  "Returns md5sum for a message object of type '<StartMission-response>"
  "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartMission-response)))
  "Returns md5sum for a message object of type 'StartMission-response"
  "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartMission-response>)))
  "Returns full string definition for message of type '<StartMission-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartMission-response)))
  "Returns full string definition for message of type 'StartMission-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartMission-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartMission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartMission-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartMission)))
  'StartMission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartMission)))
  'StartMission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartMission)))
  "Returns string type for a service object of type '<StartMission>"
  "map_manager/StartMission")