; Auto-generated. Do not edit!


(cl:in-package navigation-srv)


;//! \htmlinclude MissionWaypoints-request.msg.html

(cl:defclass <MissionWaypoints-request> (roslisp-msg-protocol:ros-message)
  ((lng
    :reader lng
    :initarg :lng
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lat
    :reader lat
    :initarg :lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (height_agl
    :reader height_agl
    :initarg :height_agl
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MissionWaypoints-request (<MissionWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<MissionWaypoints-request> is deprecated: use navigation-srv:MissionWaypoints-request instead.")))

(cl:ensure-generic-function 'lng-val :lambda-list '(m))
(cl:defmethod lng-val ((m <MissionWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lng-val is deprecated.  Use navigation-srv:lng instead.")
  (lng m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <MissionWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:lat-val is deprecated.  Use navigation-srv:lat instead.")
  (lat m))

(cl:ensure-generic-function 'height_agl-val :lambda-list '(m))
(cl:defmethod height_agl-val ((m <MissionWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:height_agl-val is deprecated.  Use navigation-srv:height_agl instead.")
  (height_agl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypoints-request>) ostream)
  "Serializes a message object of type '<MissionWaypoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'lng))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'lat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'height_agl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'height_agl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypoints-request>) istream)
  "Deserializes a message object of type '<MissionWaypoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lng) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lng)))
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
  (cl:setf (cl:slot-value msg 'lat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat)))
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
  (cl:setf (cl:slot-value msg 'height_agl) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'height_agl)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypoints-request>)))
  "Returns string type for a service object of type '<MissionWaypoints-request>"
  "navigation/MissionWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypoints-request)))
  "Returns string type for a service object of type 'MissionWaypoints-request"
  "navigation/MissionWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypoints-request>)))
  "Returns md5sum for a message object of type '<MissionWaypoints-request>"
  "6817029e547d21fe2ace732a69b3a95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypoints-request)))
  "Returns md5sum for a message object of type 'MissionWaypoints-request"
  "6817029e547d21fe2ace732a69b3a95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypoints-request>)))
  "Returns full string definition for message of type '<MissionWaypoints-request>"
  (cl:format cl:nil "float32[] lng~%float32[] lat~%float32[] height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypoints-request)))
  "Returns full string definition for message of type 'MissionWaypoints-request"
  (cl:format cl:nil "float32[] lng~%float32[] lat~%float32[] height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'height_agl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypoints-request
    (cl:cons ':lng (lng msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':height_agl (height_agl msg))
))
;//! \htmlinclude MissionWaypoints-response.msg.html

(cl:defclass <MissionWaypoints-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MissionWaypoints-response (<MissionWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-srv:<MissionWaypoints-response> is deprecated: use navigation-srv:MissionWaypoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MissionWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:success-val is deprecated.  Use navigation-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MissionWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-srv:message-val is deprecated.  Use navigation-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypoints-response>) ostream)
  "Serializes a message object of type '<MissionWaypoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypoints-response>) istream)
  "Deserializes a message object of type '<MissionWaypoints-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypoints-response>)))
  "Returns string type for a service object of type '<MissionWaypoints-response>"
  "navigation/MissionWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypoints-response)))
  "Returns string type for a service object of type 'MissionWaypoints-response"
  "navigation/MissionWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypoints-response>)))
  "Returns md5sum for a message object of type '<MissionWaypoints-response>"
  "6817029e547d21fe2ace732a69b3a95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypoints-response)))
  "Returns md5sum for a message object of type 'MissionWaypoints-response"
  "6817029e547d21fe2ace732a69b3a95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypoints-response>)))
  "Returns full string definition for message of type '<MissionWaypoints-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypoints-response)))
  "Returns full string definition for message of type 'MissionWaypoints-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypoints-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypoints-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWaypoints)))
  'MissionWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWaypoints)))
  'MissionWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypoints)))
  "Returns string type for a service object of type '<MissionWaypoints>"
  "navigation/MissionWaypoints")