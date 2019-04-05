; Auto-generated. Do not edit!


(cl:in-package map_manager-srv)


;//! \htmlinclude GetMapInfoByName-request.msg.html

(cl:defclass <GetMapInfoByName-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform ""))
)

(cl:defclass GetMapInfoByName-request (<GetMapInfoByName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfoByName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfoByName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetMapInfoByName-request> is deprecated: use map_manager-srv:GetMapInfoByName-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <GetMapInfoByName-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_id-val is deprecated.  Use map_manager-srv:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfoByName-request>) ostream)
  "Serializes a message object of type '<GetMapInfoByName-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfoByName-request>) istream)
  "Deserializes a message object of type '<GetMapInfoByName-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfoByName-request>)))
  "Returns string type for a service object of type '<GetMapInfoByName-request>"
  "map_manager/GetMapInfoByNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoByName-request)))
  "Returns string type for a service object of type 'GetMapInfoByName-request"
  "map_manager/GetMapInfoByNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfoByName-request>)))
  "Returns md5sum for a message object of type '<GetMapInfoByName-request>"
  "9853cd9476867110697e3e2277194759")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfoByName-request)))
  "Returns md5sum for a message object of type 'GetMapInfoByName-request"
  "9853cd9476867110697e3e2277194759")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfoByName-request>)))
  "Returns full string definition for message of type '<GetMapInfoByName-request>"
  (cl:format cl:nil "string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfoByName-request)))
  "Returns full string definition for message of type 'GetMapInfoByName-request"
  (cl:format cl:nil "string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfoByName-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfoByName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfoByName-request
    (cl:cons ':map_id (map_id msg))
))
;//! \htmlinclude GetMapInfoByName-response.msg.html

(cl:defclass <GetMapInfoByName-response> (roslisp-msg-protocol:ros-message)
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
   (map_lng
    :reader map_lng
    :initarg :map_lng
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (map_lat
    :reader map_lat
    :initarg :map_lat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obstacle_ids
    :reader obstacle_ids
    :initarg :obstacle_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (obstacle_lngs
    :reader obstacle_lngs
    :initarg :obstacle_lngs
    :type (cl:vector map_manager-msg:Float1DArray)
   :initform (cl:make-array 0 :element-type 'map_manager-msg:Float1DArray :initial-element (cl:make-instance 'map_manager-msg:Float1DArray)))
   (obstacle_lats
    :reader obstacle_lats
    :initarg :obstacle_lats
    :type (cl:vector map_manager-msg:Float1DArray)
   :initform (cl:make-array 0 :element-type 'map_manager-msg:Float1DArray :initial-element (cl:make-instance 'map_manager-msg:Float1DArray))))
)

(cl:defclass GetMapInfoByName-response (<GetMapInfoByName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfoByName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfoByName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetMapInfoByName-response> is deprecated: use map_manager-srv:GetMapInfoByName-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:success-val is deprecated.  Use map_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:message-val is deprecated.  Use map_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'map_lng-val :lambda-list '(m))
(cl:defmethod map_lng-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_lng-val is deprecated.  Use map_manager-srv:map_lng instead.")
  (map_lng m))

(cl:ensure-generic-function 'map_lat-val :lambda-list '(m))
(cl:defmethod map_lat-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_lat-val is deprecated.  Use map_manager-srv:map_lat instead.")
  (map_lat m))

(cl:ensure-generic-function 'obstacle_ids-val :lambda-list '(m))
(cl:defmethod obstacle_ids-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:obstacle_ids-val is deprecated.  Use map_manager-srv:obstacle_ids instead.")
  (obstacle_ids m))

(cl:ensure-generic-function 'obstacle_lngs-val :lambda-list '(m))
(cl:defmethod obstacle_lngs-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:obstacle_lngs-val is deprecated.  Use map_manager-srv:obstacle_lngs instead.")
  (obstacle_lngs m))

(cl:ensure-generic-function 'obstacle_lats-val :lambda-list '(m))
(cl:defmethod obstacle_lats-val ((m <GetMapInfoByName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:obstacle_lats-val is deprecated.  Use map_manager-srv:obstacle_lats instead.")
  (obstacle_lats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfoByName-response>) ostream)
  "Serializes a message object of type '<GetMapInfoByName-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_ids))))
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
   (cl:slot-value msg 'obstacle_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_lngs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_lngs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_lats))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_lats))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfoByName-response>) istream)
  "Deserializes a message object of type '<GetMapInfoByName-response>"
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
  (cl:setf (cl:slot-value msg 'map_lng) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_lng)))
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
  (cl:setf (cl:slot-value msg 'obstacle_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_lngs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_lngs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_manager-msg:Float1DArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_lats) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_lats)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_manager-msg:Float1DArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfoByName-response>)))
  "Returns string type for a service object of type '<GetMapInfoByName-response>"
  "map_manager/GetMapInfoByNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoByName-response)))
  "Returns string type for a service object of type 'GetMapInfoByName-response"
  "map_manager/GetMapInfoByNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfoByName-response>)))
  "Returns md5sum for a message object of type '<GetMapInfoByName-response>"
  "9853cd9476867110697e3e2277194759")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfoByName-response)))
  "Returns md5sum for a message object of type 'GetMapInfoByName-response"
  "9853cd9476867110697e3e2277194759")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfoByName-response>)))
  "Returns full string definition for message of type '<GetMapInfoByName-response>"
  (cl:format cl:nil "bool success~%string message~%float32[] map_lng~%float32[] map_lat~%string[] obstacle_ids~%Float1DArray[] obstacle_lngs~%Float1DArray[] obstacle_lats~%~%~%================================================================================~%MSG: map_manager/Float1DArray~%float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfoByName-response)))
  "Returns full string definition for message of type 'GetMapInfoByName-response"
  (cl:format cl:nil "bool success~%string message~%float32[] map_lng~%float32[] map_lat~%string[] obstacle_ids~%Float1DArray[] obstacle_lngs~%Float1DArray[] obstacle_lats~%~%~%================================================================================~%MSG: map_manager/Float1DArray~%float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfoByName-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_lng) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_lat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_lngs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_lats) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfoByName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfoByName-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':map_lng (map_lng msg))
    (cl:cons ':map_lat (map_lat msg))
    (cl:cons ':obstacle_ids (obstacle_ids msg))
    (cl:cons ':obstacle_lngs (obstacle_lngs msg))
    (cl:cons ':obstacle_lats (obstacle_lats msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapInfoByName)))
  'GetMapInfoByName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapInfoByName)))
  'GetMapInfoByName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoByName)))
  "Returns string type for a service object of type '<GetMapInfoByName>"
  "map_manager/GetMapInfoByName")