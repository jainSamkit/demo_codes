; Auto-generated. Do not edit!


(cl:in-package commander-srv)


;//! \htmlinclude DELETE_OBS_CAPTURE-request.msg.html

(cl:defclass <DELETE_OBS_CAPTURE-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DELETE_OBS_CAPTURE-request (<DELETE_OBS_CAPTURE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DELETE_OBS_CAPTURE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DELETE_OBS_CAPTURE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<DELETE_OBS_CAPTURE-request> is deprecated: use commander-srv:DELETE_OBS_CAPTURE-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DELETE_OBS_CAPTURE-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:name-val is deprecated.  Use commander-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DELETE_OBS_CAPTURE-request>) ostream)
  "Serializes a message object of type '<DELETE_OBS_CAPTURE-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DELETE_OBS_CAPTURE-request>) istream)
  "Deserializes a message object of type '<DELETE_OBS_CAPTURE-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DELETE_OBS_CAPTURE-request>)))
  "Returns string type for a service object of type '<DELETE_OBS_CAPTURE-request>"
  "commander/DELETE_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DELETE_OBS_CAPTURE-request)))
  "Returns string type for a service object of type 'DELETE_OBS_CAPTURE-request"
  "commander/DELETE_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DELETE_OBS_CAPTURE-request>)))
  "Returns md5sum for a message object of type '<DELETE_OBS_CAPTURE-request>"
  "d82dc6474dd88dad5e1615ab1b2ca74c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DELETE_OBS_CAPTURE-request)))
  "Returns md5sum for a message object of type 'DELETE_OBS_CAPTURE-request"
  "d82dc6474dd88dad5e1615ab1b2ca74c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DELETE_OBS_CAPTURE-request>)))
  "Returns full string definition for message of type '<DELETE_OBS_CAPTURE-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DELETE_OBS_CAPTURE-request)))
  "Returns full string definition for message of type 'DELETE_OBS_CAPTURE-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DELETE_OBS_CAPTURE-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DELETE_OBS_CAPTURE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DELETE_OBS_CAPTURE-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DELETE_OBS_CAPTURE-response.msg.html

(cl:defclass <DELETE_OBS_CAPTURE-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DELETE_OBS_CAPTURE-response (<DELETE_OBS_CAPTURE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DELETE_OBS_CAPTURE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DELETE_OBS_CAPTURE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<DELETE_OBS_CAPTURE-response> is deprecated: use commander-srv:DELETE_OBS_CAPTURE-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DELETE_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:success-val is deprecated.  Use commander-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DELETE_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:message-val is deprecated.  Use commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DELETE_OBS_CAPTURE-response>) ostream)
  "Serializes a message object of type '<DELETE_OBS_CAPTURE-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DELETE_OBS_CAPTURE-response>) istream)
  "Deserializes a message object of type '<DELETE_OBS_CAPTURE-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DELETE_OBS_CAPTURE-response>)))
  "Returns string type for a service object of type '<DELETE_OBS_CAPTURE-response>"
  "commander/DELETE_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DELETE_OBS_CAPTURE-response)))
  "Returns string type for a service object of type 'DELETE_OBS_CAPTURE-response"
  "commander/DELETE_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DELETE_OBS_CAPTURE-response>)))
  "Returns md5sum for a message object of type '<DELETE_OBS_CAPTURE-response>"
  "d82dc6474dd88dad5e1615ab1b2ca74c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DELETE_OBS_CAPTURE-response)))
  "Returns md5sum for a message object of type 'DELETE_OBS_CAPTURE-response"
  "d82dc6474dd88dad5e1615ab1b2ca74c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DELETE_OBS_CAPTURE-response>)))
  "Returns full string definition for message of type '<DELETE_OBS_CAPTURE-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DELETE_OBS_CAPTURE-response)))
  "Returns full string definition for message of type 'DELETE_OBS_CAPTURE-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DELETE_OBS_CAPTURE-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DELETE_OBS_CAPTURE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DELETE_OBS_CAPTURE-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DELETE_OBS_CAPTURE)))
  'DELETE_OBS_CAPTURE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DELETE_OBS_CAPTURE)))
  'DELETE_OBS_CAPTURE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DELETE_OBS_CAPTURE)))
  "Returns string type for a service object of type '<DELETE_OBS_CAPTURE>"
  "commander/DELETE_OBS_CAPTURE")