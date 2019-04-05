; Auto-generated. Do not edit!


(cl:in-package commander-srv)


;//! \htmlinclude GET_MAP_INFO-request.msg.html

(cl:defclass <GET_MAP_INFO-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (map_lat
    :reader map_lat
    :initarg :map_lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (map_lng
    :reader map_lng
    :initarg :map_lng
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (height_agl
    :reader height_agl
    :initarg :height_agl
    :type cl:float
    :initform 0.0))
)

(cl:defclass GET_MAP_INFO-request (<GET_MAP_INFO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GET_MAP_INFO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GET_MAP_INFO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<GET_MAP_INFO-request> is deprecated: use commander-srv:GET_MAP_INFO-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <GET_MAP_INFO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:map_id-val is deprecated.  Use commander-srv:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'map_lat-val :lambda-list '(m))
(cl:defmethod map_lat-val ((m <GET_MAP_INFO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:map_lat-val is deprecated.  Use commander-srv:map_lat instead.")
  (map_lat m))

(cl:ensure-generic-function 'map_lng-val :lambda-list '(m))
(cl:defmethod map_lng-val ((m <GET_MAP_INFO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:map_lng-val is deprecated.  Use commander-srv:map_lng instead.")
  (map_lng m))

(cl:ensure-generic-function 'height_agl-val :lambda-list '(m))
(cl:defmethod height_agl-val ((m <GET_MAP_INFO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:height_agl-val is deprecated.  Use commander-srv:height_agl instead.")
  (height_agl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GET_MAP_INFO-request>) ostream)
  "Serializes a message object of type '<GET_MAP_INFO-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'map_lat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'map_lng))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_agl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GET_MAP_INFO-request>) istream)
  "Deserializes a message object of type '<GET_MAP_INFO-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_lat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_lat)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_lng) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_lng)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_agl) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GET_MAP_INFO-request>)))
  "Returns string type for a service object of type '<GET_MAP_INFO-request>"
  "commander/GET_MAP_INFORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GET_MAP_INFO-request)))
  "Returns string type for a service object of type 'GET_MAP_INFO-request"
  "commander/GET_MAP_INFORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GET_MAP_INFO-request>)))
  "Returns md5sum for a message object of type '<GET_MAP_INFO-request>"
  "4e3b8f219e9670547e0390d1b9191aa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GET_MAP_INFO-request)))
  "Returns md5sum for a message object of type 'GET_MAP_INFO-request"
  "4e3b8f219e9670547e0390d1b9191aa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GET_MAP_INFO-request>)))
  "Returns full string definition for message of type '<GET_MAP_INFO-request>"
  (cl:format cl:nil "string map_id~%float32[] map_lat~%float32[] map_lng~%float32 height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GET_MAP_INFO-request)))
  "Returns full string definition for message of type 'GET_MAP_INFO-request"
  (cl:format cl:nil "string map_id~%float32[] map_lat~%float32[] map_lng~%float32 height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GET_MAP_INFO-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GET_MAP_INFO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GET_MAP_INFO-request
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':map_lat (map_lat msg))
    (cl:cons ':map_lng (map_lng msg))
    (cl:cons ':height_agl (height_agl msg))
))
;//! \htmlinclude GET_MAP_INFO-response.msg.html

(cl:defclass <GET_MAP_INFO-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GET_MAP_INFO-response (<GET_MAP_INFO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GET_MAP_INFO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GET_MAP_INFO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name commander-srv:<GET_MAP_INFO-response> is deprecated: use commander-srv:GET_MAP_INFO-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GET_MAP_INFO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:success-val is deprecated.  Use commander-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GET_MAP_INFO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader commander-srv:message-val is deprecated.  Use commander-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GET_MAP_INFO-response>) ostream)
  "Serializes a message object of type '<GET_MAP_INFO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GET_MAP_INFO-response>) istream)
  "Deserializes a message object of type '<GET_MAP_INFO-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GET_MAP_INFO-response>)))
  "Returns string type for a service object of type '<GET_MAP_INFO-response>"
  "commander/GET_MAP_INFOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GET_MAP_INFO-response)))
  "Returns string type for a service object of type 'GET_MAP_INFO-response"
  "commander/GET_MAP_INFOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GET_MAP_INFO-response>)))
  "Returns md5sum for a message object of type '<GET_MAP_INFO-response>"
  "4e3b8f219e9670547e0390d1b9191aa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GET_MAP_INFO-response)))
  "Returns md5sum for a message object of type 'GET_MAP_INFO-response"
  "4e3b8f219e9670547e0390d1b9191aa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GET_MAP_INFO-response>)))
  "Returns full string definition for message of type '<GET_MAP_INFO-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GET_MAP_INFO-response)))
  "Returns full string definition for message of type 'GET_MAP_INFO-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GET_MAP_INFO-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GET_MAP_INFO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GET_MAP_INFO-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GET_MAP_INFO)))
  'GET_MAP_INFO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GET_MAP_INFO)))
  'GET_MAP_INFO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GET_MAP_INFO)))
  "Returns string type for a service object of type '<GET_MAP_INFO>"
  "commander/GET_MAP_INFO")