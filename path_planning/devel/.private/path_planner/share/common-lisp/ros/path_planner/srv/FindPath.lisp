; Auto-generated. Do not edit!


(cl:in-package path_planner-srv)


;//! \htmlinclude FindPath-request.msg.html

(cl:defclass <FindPath-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (start_position
    :reader start_position
    :initarg :start_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (target_position
    :reader target_position
    :initarg :target_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (height_agl
    :reader height_agl
    :initarg :height_agl
    :type cl:float
    :initform 0.0))
)

(cl:defclass FindPath-request (<FindPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planner-srv:<FindPath-request> is deprecated: use path_planner-srv:FindPath-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:map_id-val is deprecated.  Use path_planner-srv:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'start_position-val :lambda-list '(m))
(cl:defmethod start_position-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:start_position-val is deprecated.  Use path_planner-srv:start_position instead.")
  (start_position m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:target_position-val is deprecated.  Use path_planner-srv:target_position instead.")
  (target_position m))

(cl:ensure-generic-function 'height_agl-val :lambda-list '(m))
(cl:defmethod height_agl-val ((m <FindPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:height_agl-val is deprecated.  Use path_planner-srv:height_agl instead.")
  (height_agl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPath-request>) ostream)
  "Serializes a message object of type '<FindPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'start_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'target_position))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_agl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPath-request>) istream)
  "Deserializes a message object of type '<FindPath-request>"
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
  (cl:setf (cl:slot-value msg 'start_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_position)))
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
  (cl:setf (cl:slot-value msg 'target_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_position)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPath-request>)))
  "Returns string type for a service object of type '<FindPath-request>"
  "path_planner/FindPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath-request)))
  "Returns string type for a service object of type 'FindPath-request"
  "path_planner/FindPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPath-request>)))
  "Returns md5sum for a message object of type '<FindPath-request>"
  "fbf4be726dfae8f25934ac5e341e5c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPath-request)))
  "Returns md5sum for a message object of type 'FindPath-request"
  "fbf4be726dfae8f25934ac5e341e5c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPath-request>)))
  "Returns full string definition for message of type '<FindPath-request>"
  (cl:format cl:nil "string map_id~%float32[] start_position~%float32[] target_position~%float32 height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPath-request)))
  "Returns full string definition for message of type 'FindPath-request"
  (cl:format cl:nil "string map_id~%float32[] start_position~%float32[] target_position~%float32 height_agl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPath-request
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':start_position (start_position msg))
    (cl:cons ':target_position (target_position msg))
    (cl:cons ':height_agl (height_agl msg))
))
;//! \htmlinclude FindPath-response.msg.html

(cl:defclass <FindPath-response> (roslisp-msg-protocol:ros-message)
  ((pos_x
    :reader pos_x
    :initarg :pos_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (height_agl
    :reader height_agl
    :initarg :height_agl
    :type cl:float
    :initform 0.0)
   (success
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

(cl:defclass FindPath-response (<FindPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FindPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FindPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planner-srv:<FindPath-response> is deprecated: use path_planner-srv:FindPath-response instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:pos_x-val is deprecated.  Use path_planner-srv:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:pos_y-val is deprecated.  Use path_planner-srv:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'height_agl-val :lambda-list '(m))
(cl:defmethod height_agl-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:height_agl-val is deprecated.  Use path_planner-srv:height_agl instead.")
  (height_agl m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:success-val is deprecated.  Use path_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FindPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:message-val is deprecated.  Use path_planner-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FindPath-response>) ostream)
  "Serializes a message object of type '<FindPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pos_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pos_y))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_agl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FindPath-response>) istream)
  "Deserializes a message object of type '<FindPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos_x)))
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
  (cl:setf (cl:slot-value msg 'pos_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos_y)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FindPath-response>)))
  "Returns string type for a service object of type '<FindPath-response>"
  "path_planner/FindPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath-response)))
  "Returns string type for a service object of type 'FindPath-response"
  "path_planner/FindPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FindPath-response>)))
  "Returns md5sum for a message object of type '<FindPath-response>"
  "fbf4be726dfae8f25934ac5e341e5c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FindPath-response)))
  "Returns md5sum for a message object of type 'FindPath-response"
  "fbf4be726dfae8f25934ac5e341e5c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FindPath-response>)))
  "Returns full string definition for message of type '<FindPath-response>"
  (cl:format cl:nil "float32[] pos_x~%float32[] pos_y~%float32 height_agl~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FindPath-response)))
  "Returns full string definition for message of type 'FindPath-response"
  (cl:format cl:nil "float32[] pos_x~%float32[] pos_y~%float32 height_agl~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FindPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FindPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FindPath-response
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':height_agl (height_agl msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FindPath)))
  'FindPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FindPath)))
  'FindPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FindPath)))
  "Returns string type for a service object of type '<FindPath>"
  "path_planner/FindPath")