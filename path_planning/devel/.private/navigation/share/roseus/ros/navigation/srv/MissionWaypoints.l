;; Auto-generated. Do not edit!


(when (boundp 'navigation::MissionWaypoints)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'MissionWaypoints (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::MISSIONWAYPOINTS")
  (make-package "NAVIGATION::MISSIONWAYPOINTS"))
(unless (find-package "NAVIGATION::MISSIONWAYPOINTSREQUEST")
  (make-package "NAVIGATION::MISSIONWAYPOINTSREQUEST"))
(unless (find-package "NAVIGATION::MISSIONWAYPOINTSRESPONSE")
  (make-package "NAVIGATION::MISSIONWAYPOINTSRESPONSE"))

(in-package "ROS")





(defclass navigation::MissionWaypointsRequest
  :super ros::object
  :slots (_lng _lat _height_agl ))

(defmethod navigation::MissionWaypointsRequest
  (:init
   (&key
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height_agl __height_agl) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lng __lng)
   (setq _lat __lat)
   (setq _height_agl __height_agl)
   self)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height_agl
   (&optional __height_agl)
   (if __height_agl (setq _height_agl __height_agl)) _height_agl)
  (:serialization-length
   ()
   (+
    ;; float32[] _lng
    (* 4    (length _lng)) 4
    ;; float32[] _lat
    (* 4    (length _lat)) 4
    ;; float32[] _height_agl
    (* 4    (length _height_agl)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _lng
     (write-long (length _lng) s)
     (dotimes (i (length _lng))
       (sys::poke (elt _lng i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _lat
     (write-long (length _lat) s)
     (dotimes (i (length _lat))
       (sys::poke (elt _lat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _height_agl
     (write-long (length _height_agl) s)
     (dotimes (i (length _height_agl))
       (sys::poke (elt _height_agl i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lng i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _height_agl
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _height_agl (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _height_agl i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass navigation::MissionWaypointsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod navigation::MissionWaypointsResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass navigation::MissionWaypoints
  :super ros::object
  :slots ())

(setf (get navigation::MissionWaypoints :md5sum-) "6817029e547d21fe2ace732a69b3a95f")
(setf (get navigation::MissionWaypoints :datatype-) "navigation/MissionWaypoints")
(setf (get navigation::MissionWaypoints :request) navigation::MissionWaypointsRequest)
(setf (get navigation::MissionWaypoints :response) navigation::MissionWaypointsResponse)

(defmethod navigation::MissionWaypointsRequest
  (:response () (instance navigation::MissionWaypointsResponse :init)))

(setf (get navigation::MissionWaypointsRequest :md5sum-) "6817029e547d21fe2ace732a69b3a95f")
(setf (get navigation::MissionWaypointsRequest :datatype-) "navigation/MissionWaypointsRequest")
(setf (get navigation::MissionWaypointsRequest :definition-)
      "float32[] lng
float32[] lat
float32[] height_agl
---
bool success
string message

")

(setf (get navigation::MissionWaypointsResponse :md5sum-) "6817029e547d21fe2ace732a69b3a95f")
(setf (get navigation::MissionWaypointsResponse :datatype-) "navigation/MissionWaypointsResponse")
(setf (get navigation::MissionWaypointsResponse :definition-)
      "float32[] lng
float32[] lat
float32[] height_agl
---
bool success
string message

")



(provide :navigation/MissionWaypoints "6817029e547d21fe2ace732a69b3a95f")


