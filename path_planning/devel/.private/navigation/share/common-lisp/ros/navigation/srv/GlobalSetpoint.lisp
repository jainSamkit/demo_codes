; Auto-generated. Do not edit!


(cl:in-package navigation-srv)


;//! \htmlinclude GlobalSetpoint-request.msg.html

(cl:defclass <GlobalSetpoint-request> (roslisp-msg-protocol:ros-message)
  ((lat_x1
    :reader lat_x1
    :initarg :lat_x1
    :type cl:float
    :initform 0.0)
   (lng_y1
    :reader lng_y1
    :initarg :lng_y1
    :type cl:float
    :initform 0.0)
   (lat_x2
    :reader lat_x2
    :initarg :lat_x2
    :type cl:float
    :initform 0.0)
   (lng_y2
    :reader lng_y2
    :initarg :lng_y2
    :type cl:float
    :initform 0.0))
)

(cl:defclass GlobalSetpoint-request (<GlobalSetpoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalSetpoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalSetpoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<GlobalSetpoint-request> is deprecated: use navigation-srv:GlobalSetpoint-request instead.")))

(cl:ensure-generic-function 'lat_x1-val :lambda-list '(m))
(cl:defmethod lat_x1-val ((m <GlobalSetpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lat_x1-val is deprecated.  Use navigation-srv:lat_x1 instead.")
  (lat_x1 m))

(cl:ensure-generic-function 'lng_y1-val :lambda-list '(m))
(cl:defmethod lng_y1-val ((m <GlobalSetpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lng_y1-val is deprecated.  Use navigation-srv:lng_y1 instead.")
  (lng_y1 m))

(cl:ensure-generic-function 'lat_x2-val :lambda-list '(m))
(cl:defmethod lat_x2-val ((m <GlobalSetpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lat_x2-val is deprecated.  Use navigation-srv:lat_x2 instead.")
  (lat_x2 m))

(cl:ensure-generic-function 'lng_y2-val :lambda-list '(m))
(cl:defmethod lng_y2-val ((m <GlobalSetpoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lng_y2-val is deprecated.  Use navigation-srv:lng_y2 instead.")
  (lng_y2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalSetpoint-request>) ostream)
  "Serializes a message object of type '<GlobalSetpoint-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lng_y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lng_y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalSetpoint-request>) istream)
  "Deserializes a message object of type '<GlobalSetpoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_x1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lng_y1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_x2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lng_y2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalSetpoint-request>)))
  "Returns string type for a service object of type '<GlobalSetpoint-request>"
  "navigation/GlobalSetpointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalSetpoint-request)))
  "Returns string type for a service object of type 'GlobalSetpoint-request"
  "navigation/GlobalSetpointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalSetpoint-request>)))
  "Returns md5sum for a message object of type '<GlobalSetpoint-request>"
  "84e486425bbf35fea76b0e2acc4e452e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalSetpoint-request)))
  "Returns md5sum for a message object of type 'GlobalSetpoint-request"
  "84e486425bbf35fea76b0e2acc4e452e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalSetpoint-request>)))
  "Returns full string definition for message of type '<GlobalSetpoint-request>"
  (cl:format cl:nil "float64 lat_x1~%float64 lng_y1~%float64 lat_x2~%float64 lng_y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalSetpoint-request)))
  "Returns full string definition for message of type 'GlobalSetpoint-request"
  (cl:format cl:nil "float64 lat_x1~%float64 lng_y1~%float64 lat_x2~%float64 lng_y2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalSetpoint-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalSetpoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalSetpoint-request
    (cl:cons ':lat_x1 (lat_x1 msg))
    (cl:cons ':lng_y1 (lng_y1 msg))
    (cl:cons ':lat_x2 (lat_x2 msg))
    (cl:cons ':lng_y2 (lng_y2 msg))
))
;//! \htmlinclude GlobalSetpoint-response.msg.html

(cl:defclass <GlobalSetpoint-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:string
    :initform ""))
)

(cl:defclass GlobalSetpoint-response (<GlobalSetpoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalSetpoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalSetpoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<GlobalSetpoint-response> is deprecated: use navigation-srv:GlobalSetpoint-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <GlobalSetpoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:res-val is deprecated.  Use navigation-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalSetpoint-response>) ostream)
  "Serializes a message object of type '<GlobalSetpoint-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalSetpoint-response>) istream)
  "Deserializes a message object of type '<GlobalSetpoint-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalSetpoint-response>)))
  "Returns string type for a service object of type '<GlobalSetpoint-response>"
  "navigation/GlobalSetpointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalSetpoint-response)))
  "Returns string type for a service object of type 'GlobalSetpoint-response"
  "navigation/GlobalSetpointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalSetpoint-response>)))
  "Returns md5sum for a message object of type '<GlobalSetpoint-response>"
  "84e486425bbf35fea76b0e2acc4e452e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalSetpoint-response)))
  "Returns md5sum for a message object of type 'GlobalSetpoint-response"
  "84e486425bbf35fea76b0e2acc4e452e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalSetpoint-response>)))
  "Returns full string definition for message of type '<GlobalSetpoint-response>"
  (cl:format cl:nil "string res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalSetpoint-response)))
  "Returns full string definition for message of type 'GlobalSetpoint-response"
  (cl:format cl:nil "string res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalSetpoint-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalSetpoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalSetpoint-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalSetpoint)))
  'GlobalSetpoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalSetpoint)))
  'GlobalSetpoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalSetpoint)))
  "Returns string type for a service object of type '<GlobalSetpoint>"
  "navigation/GlobalSetpoint")