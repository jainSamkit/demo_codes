; Auto-generated. Do not edit!


(cl:in-package path_planner-srv)


;//! \htmlinclude CreateGraph-request.msg.html

(cl:defclass <CreateGraph-request> (roslisp-msg-protocol:ros-message)
  ((map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (roadmap_growth_time
    :reader roadmap_growth_time
    :initarg :roadmap_growth_time
    :type cl:fixnum
    :initform 0)
   (roadmap_expansion_time
    :reader roadmap_expansion_time
    :initarg :roadmap_expansion_time
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CreateGraph-request (<CreateGraph-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateGraph-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateGraph-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planner-srv:<CreateGraph-request> is deprecated: use path_planner-srv:CreateGraph-request instead.")))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <CreateGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:map_id-val is deprecated.  Use path_planner-srv:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'roadmap_growth_time-val :lambda-list '(m))
(cl:defmethod roadmap_growth_time-val ((m <CreateGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:roadmap_growth_time-val is deprecated.  Use path_planner-srv:roadmap_growth_time instead.")
  (roadmap_growth_time m))

(cl:ensure-generic-function 'roadmap_expansion_time-val :lambda-list '(m))
(cl:defmethod roadmap_expansion_time-val ((m <CreateGraph-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:roadmap_expansion_time-val is deprecated.  Use path_planner-srv:roadmap_expansion_time instead.")
  (roadmap_expansion_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateGraph-request>) ostream)
  "Serializes a message object of type '<CreateGraph-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:let* ((signed (cl:slot-value msg 'roadmap_growth_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roadmap_expansion_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateGraph-request>) istream)
  "Deserializes a message object of type '<CreateGraph-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roadmap_growth_time) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roadmap_expansion_time) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateGraph-request>)))
  "Returns string type for a service object of type '<CreateGraph-request>"
  "path_planner/CreateGraphRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateGraph-request)))
  "Returns string type for a service object of type 'CreateGraph-request"
  "path_planner/CreateGraphRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateGraph-request>)))
  "Returns md5sum for a message object of type '<CreateGraph-request>"
  "f5d270e8ce37df345157a107cd8c1f39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateGraph-request)))
  "Returns md5sum for a message object of type 'CreateGraph-request"
  "f5d270e8ce37df345157a107cd8c1f39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateGraph-request>)))
  "Returns full string definition for message of type '<CreateGraph-request>"
  (cl:format cl:nil "string map_id~%int8 roadmap_growth_time~%int8 roadmap_expansion_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateGraph-request)))
  "Returns full string definition for message of type 'CreateGraph-request"
  (cl:format cl:nil "string map_id~%int8 roadmap_growth_time~%int8 roadmap_expansion_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateGraph-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_id))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateGraph-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateGraph-request
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':roadmap_growth_time (roadmap_growth_time msg))
    (cl:cons ':roadmap_expansion_time (roadmap_expansion_time msg))
))
;//! \htmlinclude CreateGraph-response.msg.html

(cl:defclass <CreateGraph-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CreateGraph-response (<CreateGraph-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateGraph-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateGraph-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planner-srv:<CreateGraph-response> is deprecated: use path_planner-srv:CreateGraph-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CreateGraph-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:success-val is deprecated.  Use path_planner-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CreateGraph-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planner-srv:message-val is deprecated.  Use path_planner-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateGraph-response>) ostream)
  "Serializes a message object of type '<CreateGraph-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateGraph-response>) istream)
  "Deserializes a message object of type '<CreateGraph-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateGraph-response>)))
  "Returns string type for a service object of type '<CreateGraph-response>"
  "path_planner/CreateGraphResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateGraph-response)))
  "Returns string type for a service object of type 'CreateGraph-response"
  "path_planner/CreateGraphResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateGraph-response>)))
  "Returns md5sum for a message object of type '<CreateGraph-response>"
  "f5d270e8ce37df345157a107cd8c1f39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateGraph-response)))
  "Returns md5sum for a message object of type 'CreateGraph-response"
  "f5d270e8ce37df345157a107cd8c1f39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateGraph-response>)))
  "Returns full string definition for message of type '<CreateGraph-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateGraph-response)))
  "Returns full string definition for message of type 'CreateGraph-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateGraph-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateGraph-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateGraph-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateGraph)))
  'CreateGraph-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateGraph)))
  'CreateGraph-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateGraph)))
  "Returns string type for a service object of type '<CreateGraph>"
  "path_planner/CreateGraph")