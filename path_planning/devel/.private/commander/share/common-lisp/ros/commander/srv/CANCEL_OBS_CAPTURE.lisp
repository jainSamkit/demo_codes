; Auto-generated. Do not edit!


(cl:in-package commander-srv)


;//! \htmlinclude CANCEL_OBS_CAPTURE-request.msg.html

(cl:defclass <CANCEL_OBS_CAPTURE-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CANCEL_OBS_CAPTURE-request (<CANCEL_OBS_CAPTURE-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CANCEL_OBS_CAPTURE-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CANCEL_OBS_CAPTURE-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<CANCEL_OBS_CAPTURE-request> is deprecated: use commander-srv:CANCEL_OBS_CAPTURE-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CANCEL_OBS_CAPTURE-request>) ostream)
  "Serializes a message object of type '<CANCEL_OBS_CAPTURE-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CANCEL_OBS_CAPTURE-request>) istream)
  "Deserializes a message object of type '<CANCEL_OBS_CAPTURE-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CANCEL_OBS_CAPTURE-request>)))
  "Returns string type for a service object of type '<CANCEL_OBS_CAPTURE-request>"
  "commander/CANCEL_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CANCEL_OBS_CAPTURE-request)))
  "Returns string type for a service object of type 'CANCEL_OBS_CAPTURE-request"
  "commander/CANCEL_OBS_CAPTURERequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CANCEL_OBS_CAPTURE-request>)))
  "Returns md5sum for a message object of type '<CANCEL_OBS_CAPTURE-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CANCEL_OBS_CAPTURE-request)))
  "Returns md5sum for a message object of type 'CANCEL_OBS_CAPTURE-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CANCEL_OBS_CAPTURE-request>)))
  "Returns full string definition for message of type '<CANCEL_OBS_CAPTURE-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CANCEL_OBS_CAPTURE-request)))
  "Returns full string definition for message of type 'CANCEL_OBS_CAPTURE-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CANCEL_OBS_CAPTURE-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CANCEL_OBS_CAPTURE-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CANCEL_OBS_CAPTURE-request
))
;//! \htmlinclude CANCEL_OBS_CAPTURE-response.msg.html

(cl:defclass <CANCEL_OBS_CAPTURE-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CANCEL_OBS_CAPTURE-response (<CANCEL_OBS_CAPTURE-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CANCEL_OBS_CAPTURE-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CANCEL_OBS_CAPTURE-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<CANCEL_OBS_CAPTURE-response> is deprecated: use commander-srv:CANCEL_OBS_CAPTURE-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CANCEL_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:success-val is deprecated.  Use commander-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CANCEL_OBS_CAPTURE-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:message-val is deprecated.  Use commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CANCEL_OBS_CAPTURE-response>) ostream)
  "Serializes a message object of type '<CANCEL_OBS_CAPTURE-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CANCEL_OBS_CAPTURE-response>) istream)
  "Deserializes a message object of type '<CANCEL_OBS_CAPTURE-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CANCEL_OBS_CAPTURE-response>)))
  "Returns string type for a service object of type '<CANCEL_OBS_CAPTURE-response>"
  "commander/CANCEL_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CANCEL_OBS_CAPTURE-response)))
  "Returns string type for a service object of type 'CANCEL_OBS_CAPTURE-response"
  "commander/CANCEL_OBS_CAPTUREResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CANCEL_OBS_CAPTURE-response>)))
  "Returns md5sum for a message object of type '<CANCEL_OBS_CAPTURE-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CANCEL_OBS_CAPTURE-response)))
  "Returns md5sum for a message object of type 'CANCEL_OBS_CAPTURE-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CANCEL_OBS_CAPTURE-response>)))
  "Returns full string definition for message of type '<CANCEL_OBS_CAPTURE-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CANCEL_OBS_CAPTURE-response)))
  "Returns full string definition for message of type 'CANCEL_OBS_CAPTURE-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CANCEL_OBS_CAPTURE-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CANCEL_OBS_CAPTURE-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CANCEL_OBS_CAPTURE-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CANCEL_OBS_CAPTURE)))
  'CANCEL_OBS_CAPTURE-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CANCEL_OBS_CAPTURE)))
  'CANCEL_OBS_CAPTURE-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CANCEL_OBS_CAPTURE)))
  "Returns string type for a service object of type '<CANCEL_OBS_CAPTURE>"
  "commander/CANCEL_OBS_CAPTURE")