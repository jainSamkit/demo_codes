; Auto-generated. Do not edit!


(cl:in-package commander-srv)


;//! \htmlinclude STOP_OBS_CAPTURE-request.msg.html

(cl:defclass <STOP_OBS_CAPTURE-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass STOP_OBS_CAPTURE-request (<STOP_OBS_CAPTURE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <STOP_OBS_CAPTURE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'STOP_OBS_CAPTURE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<STOP_OBS_CAPTURE-request> is deprecated: use commander-srv:STOP_OBS_CAPTURE-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <STOP_OBS_CAPTURE-request>) ostream)
  "Serializes a message object of type '<STOP_OBS_CAPTURE-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <STOP_OBS_CAPTURE-request>) istream)
  "Deserializes a message object of type '<STOP_OBS_CAPTURE-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<STOP_OBS_CAPTURE-request>)))
  "Returns string type for a service object of type '<STOP_OBS_CAPTURE-request>"
  "commander/STOP_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STOP_OBS_CAPTURE-request)))
  "Returns string type for a service object of type 'STOP_OBS_CAPTURE-request"
  "commander/STOP_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<STOP_OBS_CAPTURE-request>)))
  "Returns md5sum for a message object of type '<STOP_OBS_CAPTURE-request>"
  "40b6ce9c486fd44682f1445d56896283")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'STOP_OBS_CAPTURE-request)))
  "Returns md5sum for a message object of type 'STOP_OBS_CAPTURE-request"
  "40b6ce9c486fd44682f1445d56896283")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<STOP_OBS_CAPTURE-request>)))
  "Returns full string definition for message of type '<STOP_OBS_CAPTURE-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'STOP_OBS_CAPTURE-request)))
  "Returns full string definition for message of type 'STOP_OBS_CAPTURE-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <STOP_OBS_CAPTURE-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <STOP_OBS_CAPTURE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'STOP_OBS_CAPTURE-request
))
;//! \htmlinclude STOP_OBS_CAPTURE-response.msg.html

(cl:defclass <STOP_OBS_CAPTURE-response> (roslisp-msg-protocol:ros-message)
  ((obs_name
    :reader obs_name
    :initarg :obs_name
    :type cl:string
    :initform "")
   (obs_lat
    :reader obs_lat
    :initarg :obs_lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obs_lng
    :reader obs_lng
    :initarg :obs_lng
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass STOP_OBS_CAPTURE-response (<STOP_OBS_CAPTURE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <STOP_OBS_CAPTURE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'STOP_OBS_CAPTURE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<STOP_OBS_CAPTURE-response> is deprecated: use commander-srv:STOP_OBS_CAPTURE-response instead.")))

(cl:ensure-generic-function 'obs_name-val :lambda-list '(m))
(cl:defmethod obs_name-val ((m <STOP_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:obs_name-val is deprecated.  Use commander-srv:obs_name instead.")
  (obs_name m))

(cl:ensure-generic-function 'obs_lat-val :lambda-list '(m))
(cl:defmethod obs_lat-val ((m <STOP_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:obs_lat-val is deprecated.  Use commander-srv:obs_lat instead.")
  (obs_lat m))

(cl:ensure-generic-function 'obs_lng-val :lambda-list '(m))
(cl:defmethod obs_lng-val ((m <STOP_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:obs_lng-val is deprecated.  Use commander-srv:obs_lng instead.")
  (obs_lng m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <STOP_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:message-val is deprecated.  Use commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <STOP_OBS_CAPTURE-response>) ostream)
  "Serializes a message object of type '<STOP_OBS_CAPTURE-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'obs_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'obs_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'obs_lat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs_lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'obs_lng))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <STOP_OBS_CAPTURE-response>) istream)
  "Deserializes a message object of type '<STOP_OBS_CAPTURE-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'obs_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs_lat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs_lat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs_lng) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs_lng)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<STOP_OBS_CAPTURE-response>)))
  "Returns string type for a service object of type '<STOP_OBS_CAPTURE-response>"
  "commander/STOP_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STOP_OBS_CAPTURE-response)))
  "Returns string type for a service object of type 'STOP_OBS_CAPTURE-response"
  "commander/STOP_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<STOP_OBS_CAPTURE-response>)))
  "Returns md5sum for a message object of type '<STOP_OBS_CAPTURE-response>"
  "40b6ce9c486fd44682f1445d56896283")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'STOP_OBS_CAPTURE-response)))
  "Returns md5sum for a message object of type 'STOP_OBS_CAPTURE-response"
  "40b6ce9c486fd44682f1445d56896283")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<STOP_OBS_CAPTURE-response>)))
  "Returns full string definition for message of type '<STOP_OBS_CAPTURE-response>"
  (cl:format cl:nil "string obs_name~%float64[] obs_lat~%float64[] obs_lng~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'STOP_OBS_CAPTURE-response)))
  "Returns full string definition for message of type 'STOP_OBS_CAPTURE-response"
  (cl:format cl:nil "string obs_name~%float64[] obs_lat~%float64[] obs_lng~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <STOP_OBS_CAPTURE-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'obs_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs_lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs_lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <STOP_OBS_CAPTURE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'STOP_OBS_CAPTURE-response
    (cl:cons ':obs_name (obs_name msg))
    (cl:cons ':obs_lat (obs_lat msg))
    (cl:cons ':obs_lng (obs_lng msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'STOP_OBS_CAPTURE)))
  'STOP_OBS_CAPTURE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'STOP_OBS_CAPTURE)))
  'STOP_OBS_CAPTURE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'STOP_OBS_CAPTURE)))
  "Returns string type for a service object of type '<STOP_OBS_CAPTURE>"
  "commander/STOP_OBS_CAPTURE")