; Auto-generated. Do not edit!


(cl:in-package map_manager-srv)


;//! \htmlinclude GetObstacles-request.msg.html

(cl:defclass <GetObstacles-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform ""))
)

(cl:defclass GetObstacles-request (<GetObstacles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObstacles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObstacles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetObstacles-request> is deprecated: use map_manager-srv:GetObstacles-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <GetObstacles-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:map_id-val is deprecated.  Use map_manager-srv:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObstacles-request>) ostream)
  "Serializes a message object of type '<GetObstacles-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObstacles-request>) istream)
  "Deserializes a message object of type '<GetObstacles-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObstacles-request>)))
  "Returns string type for a service object of type '<GetObstacles-request>"
  "map_manager/GetObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacles-request)))
  "Returns string type for a service object of type 'GetObstacles-request"
  "map_manager/GetObstaclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObstacles-request>)))
  "Returns md5sum for a message object of type '<GetObstacles-request>"
  "463fe8e4f9b2a4671162d1724d05221c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObstacles-request)))
  "Returns md5sum for a message object of type 'GetObstacles-request"
  "463fe8e4f9b2a4671162d1724d05221c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObstacles-request>)))
  "Returns full string definition for message of type '<GetObstacles-request>"
  (cl:format cl:nil "string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObstacles-request)))
  "Returns full string definition for message of type 'GetObstacles-request"
  (cl:format cl:nil "string map_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObstacles-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObstacles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObstacles-request
    (cl:cons ':map_id (map_id msg))
))
;//! \htmlinclude GetObstacles-response.msg.html

(cl:defclass <GetObstacles-response> (roslisp-msg-protocol:ros-message)
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
   (obstacle_ids
    :reader obstacle_ids
    :initarg :obstacle_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (lngs
    :reader lngs
    :initarg :lngs
    :type (cl:vector map_manager-msg:Float1DArray)
   :initform (cl:make-array 0 :element-type 'map_manager-msg:Float1DArray :initial-element (cl:make-instance 'map_manager-msg:Float1DArray)))
   (lats
    :reader lats
    :initarg :lats
    :type (cl:vector map_manager-msg:Float1DArray)
   :initform (cl:make-array 0 :element-type 'map_manager-msg:Float1DArray :initial-element (cl:make-instance 'map_manager-msg:Float1DArray))))
)

(cl:defclass GetObstacles-response (<GetObstacles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObstacles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObstacles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-srv:<GetObstacles-response> is deprecated: use map_manager-srv:GetObstacles-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:success-val is deprecated.  Use map_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:message-val is deprecated.  Use map_manager-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'obstacle_ids-val :lambda-list '(m))
(cl:defmethod obstacle_ids-val ((m <GetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:obstacle_ids-val is deprecated.  Use map_manager-srv:obstacle_ids instead.")
  (obstacle_ids m))

(cl:ensure-generic-function 'lngs-val :lambda-list '(m))
(cl:defmethod lngs-val ((m <GetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:lngs-val is deprecated.  Use map_manager-srv:lngs instead.")
  (lngs m))

(cl:ensure-generic-function 'lats-val :lambda-list '(m))
(cl:defmethod lats-val ((m <GetObstacles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-srv:lats-val is deprecated.  Use map_manager-srv:lats instead.")
  (lats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObstacles-response>) ostream)
  "Serializes a message object of type '<GetObstacles-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lngs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lngs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lats))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lats))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObstacles-response>) istream)
  "Deserializes a message object of type '<GetObstacles-response>"
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
  (cl:setf (cl:slot-value msg 'lngs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lngs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_manager-msg:Float1DArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lats) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lats)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_manager-msg:Float1DArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObstacles-response>)))
  "Returns string type for a service object of type '<GetObstacles-response>"
  "map_manager/GetObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacles-response)))
  "Returns string type for a service object of type 'GetObstacles-response"
  "map_manager/GetObstaclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObstacles-response>)))
  "Returns md5sum for a message object of type '<GetObstacles-response>"
  "463fe8e4f9b2a4671162d1724d05221c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObstacles-response)))
  "Returns md5sum for a message object of type 'GetObstacles-response"
  "463fe8e4f9b2a4671162d1724d05221c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObstacles-response>)))
  "Returns full string definition for message of type '<GetObstacles-response>"
  (cl:format cl:nil "bool success~%string message~%string[] obstacle_ids~%Float1DArray[] lngs~%Float1DArray[] lats~%~%~%================================================================================~%MSG: map_manager/Float1DArray~%float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObstacles-response)))
  "Returns full string definition for message of type 'GetObstacles-response"
  (cl:format cl:nil "bool success~%string message~%string[] obstacle_ids~%Float1DArray[] lngs~%Float1DArray[] lats~%~%~%================================================================================~%MSG: map_manager/Float1DArray~%float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObstacles-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lngs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lats) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObstacles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObstacles-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':obstacle_ids (obstacle_ids msg))
    (cl:cons ':lngs (lngs msg))
    (cl:cons ':lats (lats msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetObstacles)))
  'GetObstacles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetObstacles)))
  'GetObstacles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacles)))
  "Returns string type for a service object of type '<GetObstacles>"
  "map_manager/GetObstacles")