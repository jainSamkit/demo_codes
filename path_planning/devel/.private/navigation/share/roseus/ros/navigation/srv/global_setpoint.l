;; Auto-generated. Do not edit!


(when (boundp 'navigation::global_setpoint)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'global_setpoint (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::GLOBAL_SETPOINT")
  (make-package "NAVIGATION::GLOBAL_SETPOINT"))
(unless (find-package "NAVIGATION::GLOBAL_SETPOINTREQUEST")
  (make-package "NAVIGATION::GLOBAL_SETPOINTREQUEST"))
(unless (find-package "NAVIGATION::GLOBAL_SETPOINTRESPONSE")
  (make-package "NAVIGATION::GLOBAL_SETPOINTRESPONSE"))

(in-package "ROS")





(defclass navigation::global_setpointRequest
  :super ros::object
  :slots (_lat_x1 _lng_y1 _lat_x2 _lng_y2 ))

(defmethod navigation::global_setpointRequest
  (:init
   (&key
    ((:lat_x1 __lat_x1) 0.0)
    ((:lng_y1 __lng_y1) 0.0)
    ((:lat_x2 __lat_x2) 0.0)
    ((:lng_y2 __lng_y2) 0.0)
    )
   (send-super :init)
   (setq _lat_x1 (float __lat_x1))
   (setq _lng_y1 (float __lng_y1))
   (setq _lat_x2 (float __lat_x2))
   (setq _lng_y2 (float __lng_y2))
   self)
  (:lat_x1
   (&optional __lat_x1)
   (if __lat_x1 (setq _lat_x1 __lat_x1)) _lat_x1)
  (:lng_y1
   (&optional __lng_y1)
   (if __lng_y1 (setq _lng_y1 __lng_y1)) _lng_y1)
  (:lat_x2
   (&optional __lat_x2)
   (if __lat_x2 (setq _lat_x2 __lat_x2)) _lat_x2)
  (:lng_y2
   (&optional __lng_y2)
   (if __lng_y2 (setq _lng_y2 __lng_y2)) _lng_y2)
  (:serialization-length
   ()
   (+
    ;; float64 _lat_x1
    8
    ;; float64 _lng_y1
    8
    ;; float64 _lat_x2
    8
    ;; float64 _lng_y2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat_x1
       (sys::poke _lat_x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lng_y1
       (sys::poke _lng_y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_x2
       (sys::poke _lat_x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lng_y2
       (sys::poke _lng_y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat_x1
     (setq _lat_x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lng_y1
     (setq _lng_y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_x2
     (setq _lat_x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lng_y2
     (setq _lng_y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass navigation::global_setpointResponse
  :super ros::object
  :slots (_res ))

(defmethod navigation::global_setpointResponse
  (:init
   (&key
    ((:res __res) "")
    )
   (send-super :init)
   (setq _res (string __res))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; string _res
    4 (length _res)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _res
       (write-long (length _res) s) (princ _res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass navigation::global_setpoint
  :super ros::object
  :slots ())

(setf (get navigation::global_setpoint :md5sum-) "84e486425bbf35fea76b0e2acc4e452e")
(setf (get navigation::global_setpoint :datatype-) "navigation/global_setpoint")
(setf (get navigation::global_setpoint :request) navigation::global_setpointRequest)
(setf (get navigation::global_setpoint :response) navigation::global_setpointResponse)

(defmethod navigation::global_setpointRequest
  (:response () (instance navigation::global_setpointResponse :init)))

(setf (get navigation::global_setpointRequest :md5sum-) "84e486425bbf35fea76b0e2acc4e452e")
(setf (get navigation::global_setpointRequest :datatype-) "navigation/global_setpointRequest")
(setf (get navigation::global_setpointRequest :definition-)
      "float64 lat_x1
float64 lng_y1
float64 lat_x2
float64 lng_y2
---
string res
")

(setf (get navigation::global_setpointResponse :md5sum-) "84e486425bbf35fea76b0e2acc4e452e")
(setf (get navigation::global_setpointResponse :datatype-) "navigation/global_setpointResponse")
(setf (get navigation::global_setpointResponse :definition-)
      "float64 lat_x1
float64 lng_y1
float64 lat_x2
float64 lng_y2
---
string res
")



(provide :navigation/global_setpoint "84e486425bbf35fea76b0e2acc4e452e")


