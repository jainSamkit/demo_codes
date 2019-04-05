; Auto-generated. Do not edit!


(cl:in-package map_manager-srv)


;//! \htmlinclude GetMapList-request.msg.html

(cl:defclass <GetMapList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMapList-request (<GetMapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetMapList-request> is deprecated: use map_manager-srv:GetMapList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapList-request>) ostream)
  "Serializes a message object of type '<GetMapList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapList-request>) istream)
  "Deserializes a message object of type '<GetMapList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapList-request>)))
  "Returns string type for a service object of type '<GetMapList-request>"
  "map_manager/GetMapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapList-request)))
  "Returns string type for a service object of type 'GetMapList-request"
  "map_manager/GetMapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapList-request>)))
  "Returns md5sum for a message object of type '<GetMapList-request>"
  "fcae05604cd2e87fd94fb58351b33527")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapList-request)))
  "Returns md5sum for a message object of type 'GetMapList-request"
  "fcae05604cd2e87fd94fb58351b33527")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapList-request>)))
  "Returns full string definition for message of type '<GetMapList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapList-request)))
  "Returns full string definition for message of type 'GetMapList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapList-request
))
;//! \htmlinclude GetMapList-response.msg.html

(cl:defclass <GetMapList-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (map_ids
    :reader map_ids
    :initarg :map_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetMapList-response (<GetMapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetMapList-response> is deprecated: use map_manager-srv:GetMapList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:success-val is deprecated.  Use map_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:message-val is deprecated.  Use map_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'map_ids-val :lambda-list '(m))
(cl:defmethod map_ids-val ((m <GetMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_ids-val is deprecated.  Use map_manager-srv:map_ids instead.")
  (map_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapList-response>) ostream)
  "Serializes a message object of type '<GetMapList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'map_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapList-response>) istream)
  "Deserializes a message object of type '<GetMapList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapList-response>)))
  "Returns string type for a service object of type '<GetMapList-response>"
  "map_manager/GetMapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapList-response)))
  "Returns string type for a service object of type 'GetMapList-response"
  "map_manager/GetMapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapList-response>)))
  "Returns md5sum for a message object of type '<GetMapList-response>"
  "fcae05604cd2e87fd94fb58351b33527")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapList-response)))
  "Returns md5sum for a message object of type 'GetMapList-response"
  "fcae05604cd2e87fd94fb58351b33527")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapList-response>)))
  "Returns full string definition for message of type '<GetMapList-response>"
  (cl:format cl:nil "bool success~%string message~%string[] map_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapList-response)))
  "Returns full string definition for message of type 'GetMapList-response"
  (cl:format cl:nil "bool success~%string message~%string[] map_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapList-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapList-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':map_ids (map_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapList)))
  'GetMapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapList)))
  'GetMapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapList)))
  "Returns string type for a service object of type '<GetMapList>"
  "map_manager/GetMapList")