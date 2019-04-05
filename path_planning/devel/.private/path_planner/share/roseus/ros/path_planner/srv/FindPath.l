;; Auto-generated. Do not edit!


(when (boundp 'path_planner::FindPath)
  (if (not (find-package "PATH_PLANNER"))
    (make-package "PATH_PLANNER"))
  (shadow 'FindPath (find-package "PATH_PLANNER")))
(unless (find-package "PATH_PLANNER::FINDPATH")
  (make-package "PATH_PLANNER::FINDPATH"))
(unless (find-package "PATH_PLANNER::FINDPATHREQUEST")
  (make-package "PATH_PLANNER::FINDPATHREQUEST"))
(unless (find-package "PATH_PLANNER::FINDPATHRESPONSE")
  (make-package "PATH_PLANNER::FINDPATHRESPONSE"))

(in-package "ROS")





(defclass path_planner::FindPathRequest
  :super ros::object
  :slots (_map_id _start_position _target_position _height_agl ))

(defmethod path_planner::FindPathRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:start_position __start_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_position __target_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height_agl __height_agl) 0.0)
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _start_position __start_position)
   (setq _target_position __target_position)
   (setq _height_agl (float __height_agl))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:start_position
   (&optional __start_position)
   (if __start_position (setq _start_position __start_position)) _start_position)
  (:target_position
   (&optional __target_position)
   (if __target_position (setq _target_position __target_position)) _target_position)
  (:height_agl
   (&optional __height_agl)
   (if __height_agl (setq _height_agl __height_agl)) _height_agl)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; float32[] _start_position
    (* 4    (length _start_position)) 4
    ;; float32[] _target_position
    (* 4    (length _target_position)) 4
    ;; float32 _height_agl
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; float32[] _start_position
     (write-long (length _start_position) s)
     (dotimes (i (length _start_position))
       (sys::poke (elt _start_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _target_position
     (write-long (length _target_position) s)
     (dotimes (i (length _target_position))
       (sys::poke (elt _target_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _height_agl
       (sys::poke _height_agl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _start_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _start_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _start_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _target_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _height_agl
     (setq _height_agl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass path_planner::FindPathResponse
  :super ros::object
  :slots (_pos_x _pos_y _height_agl _success _message ))

(defmethod path_planner::FindPathResponse
  (:init
   (&key
    ((:pos_x __pos_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pos_y __pos_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height_agl __height_agl) 0.0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _pos_x __pos_x)
   (setq _pos_y __pos_y)
   (setq _height_agl (float __height_agl))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:height_agl
   (&optional __height_agl)
   (if __height_agl (setq _height_agl __height_agl)) _height_agl)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos_x
    (* 4    (length _pos_x)) 4
    ;; float32[] _pos_y
    (* 4    (length _pos_y)) 4
    ;; float32 _height_agl
    4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos_x
     (write-long (length _pos_x) s)
     (dotimes (i (length _pos_x))
       (sys::poke (elt _pos_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pos_y
     (write-long (length _pos_y) s)
     (dotimes (i (length _pos_y))
       (sys::poke (elt _pos_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _height_agl
       (sys::poke _height_agl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pos_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _height_agl
     (setq _height_agl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass path_planner::FindPath
  :super ros::object
  :slots ())

(setf (get path_planner::FindPath :md5sum-) "fbf4be726dfae8f25934ac5e341e5c84")
(setf (get path_planner::FindPath :datatype-) "path_planner/FindPath")
(setf (get path_planner::FindPath :request) path_planner::FindPathRequest)
(setf (get path_planner::FindPath :response) path_planner::FindPathResponse)

(defmethod path_planner::FindPathRequest
  (:response () (instance path_planner::FindPathResponse :init)))

(setf (get path_planner::FindPathRequest :md5sum-) "fbf4be726dfae8f25934ac5e341e5c84")
(setf (get path_planner::FindPathRequest :datatype-) "path_planner/FindPathRequest")
(setf (get path_planner::FindPathRequest :definition-)
      "string map_id
float32[] start_position
float32[] target_position
float32 height_agl
---
float32[] pos_x
float32[] pos_y
float32 height_agl
bool success
string message

")

(setf (get path_planner::FindPathResponse :md5sum-) "fbf4be726dfae8f25934ac5e341e5c84")
(setf (get path_planner::FindPathResponse :datatype-) "path_planner/FindPathResponse")
(setf (get path_planner::FindPathResponse :definition-)
      "string map_id
float32[] start_position
float32[] target_position
float32 height_agl
---
float32[] pos_x
float32[] pos_y
float32 height_agl
bool success
string message

")



(provide :path_planner/FindPath "fbf4be726dfae8f25934ac5e341e5c84")


