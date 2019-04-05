; Auto-generated. Do not edit!


(cl:in-package map_manager-msg)


;//! \htmlinclude Float1DArray.msg.html

(cl:defclass <Float1DArray> (roslisp-msg-protocol:ros-message)
  ((single_coord
    :reader single_coord
    :initarg :single_coord
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Float1DArray (<Float1DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float1DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float1DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_manager-msg:<Float1DArray> is deprecated: use map_manager-msg:Float1DArray instead.")))

(cl:ensure-generic-function 'single_coord-val :lambda-list '(m))
(cl:defmethod single_coord-val ((m <Float1DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_manager-msg:single_coord-val is deprecated.  Use map_manager-msg:single_coord instead.")
  (single_coord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float1DArray>) ostream)
  "Serializes a message object of type '<Float1DArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'single_coord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'single_coord))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float1DArray>) istream)
  "Deserializes a message object of type '<Float1DArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'single_coord) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'single_coord)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float1DArray>)))
  "Returns string type for a message object of type '<Float1DArray>"
  "map_manager/Float1DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float1DArray)))
  "Returns string type for a message object of type 'Float1DArray"
  "map_manager/Float1DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float1DArray>)))
  "Returns md5sum for a message object of type '<Float1DArray>"
  "1426ab7ee5dd52e03f7484660624498e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float1DArray)))
  "Returns md5sum for a message object of type 'Float1DArray"
  "1426ab7ee5dd52e03f7484660624498e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float1DArray>)))
  "Returns full string definition for message of type '<Float1DArray>"
  (cl:format cl:nil "float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float1DArray)))
  "Returns full string definition for message of type 'Float1DArray"
  (cl:format cl:nil "float32[] single_coord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float1DArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'single_coord) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float1DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'Float1DArray
    (cl:cons ':single_coord (single_coord msg))
))
