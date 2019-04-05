;; Auto-generated. Do not edit!


(when (boundp 'commander::STOP_OBS_CAPTURE)
  (if (not (find-package "COMMANDER"))
    (make-package "COMMANDER"))
  (shadow 'STOP_OBS_CAPTURE (find-package "COMMANDER")))
(unless (find-package "COMMANDER::STOP_OBS_CAPTURE")
  (make-package "COMMANDER::STOP_OBS_CAPTURE"))
(unless (find-package "COMMANDER::STOP_OBS_CAPTUREREQUEST")
  (make-package "COMMANDER::STOP_OBS_CAPTUREREQUEST"))
(unless (find-package "COMMANDER::STOP_OBS_CAPTURERESPONSE")
  (make-package "COMMANDER::STOP_OBS_CAPTURERESPONSE"))

(in-package "ROS")





(defclass commander::STOP_OBS_CAPTURERequest
  :super ros::object
  :slots ())

(defmethod commander::STOP_OBS_CAPTURERequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass commander::STOP_OBS_CAPTUREResponse
  :super ros::object
  :slots (_obs_name _obs_lat _obs_lng _message ))

(defmethod commander::STOP_OBS_CAPTUREResponse
  (:init
   (&key
    ((:obs_name __obs_name) "")
    ((:obs_lat __obs_lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obs_lng __obs_lng) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _obs_name (string __obs_name))
   (setq _obs_lat __obs_lat)
   (setq _obs_lng __obs_lng)
   (setq _message (string __message))
   self)
  (:obs_name
   (&optional __obs_name)
   (if __obs_name (setq _obs_name __obs_name)) _obs_name)
  (:obs_lat
   (&optional __obs_lat)
   (if __obs_lat (setq _obs_lat __obs_lat)) _obs_lat)
  (:obs_lng
   (&optional __obs_lng)
   (if __obs_lng (setq _obs_lng __obs_lng)) _obs_lng)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _obs_name
    4 (length _obs_name)
    ;; float64[] _obs_lat
    (* 8    (length _obs_lat)) 4
    ;; float64[] _obs_lng
    (* 8    (length _obs_lng)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _obs_name
       (write-long (length _obs_name) s) (princ _obs_name s)
     ;; float64[] _obs_lat
     (write-long (length _obs_lat) s)
     (dotimes (i (length _obs_lat))
       (sys::poke (elt _obs_lat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _obs_lng
     (write-long (length _obs_lng) s)
     (dotimes (i (length _obs_lng))
       (sys::poke (elt _obs_lng i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _obs_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _obs_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _obs_lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs_lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obs_lat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _obs_lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs_lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obs_lng i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass commander::STOP_OBS_CAPTURE
  :super ros::object
  :slots ())

(setf (get commander::STOP_OBS_CAPTURE :md5sum-) "40b6ce9c486fd44682f1445d56896283")
(setf (get commander::STOP_OBS_CAPTURE :datatype-) "commander/STOP_OBS_CAPTURE")
(setf (get commander::STOP_OBS_CAPTURE :request) commander::STOP_OBS_CAPTURERequest)
(setf (get commander::STOP_OBS_CAPTURE :response) commander::STOP_OBS_CAPTUREResponse)

(defmethod commander::STOP_OBS_CAPTURERequest
  (:response () (instance commander::STOP_OBS_CAPTUREResponse :init)))

(setf (get commander::STOP_OBS_CAPTURERequest :md5sum-) "40b6ce9c486fd44682f1445d56896283")
(setf (get commander::STOP_OBS_CAPTURERequest :datatype-) "commander/STOP_OBS_CAPTURERequest")
(setf (get commander::STOP_OBS_CAPTURERequest :definition-)
      "---
string obs_name
float64[] obs_lat
float64[] obs_lng
string message
")

(setf (get commander::STOP_OBS_CAPTUREResponse :md5sum-) "40b6ce9c486fd44682f1445d56896283")
(setf (get commander::STOP_OBS_CAPTUREResponse :datatype-) "commander/STOP_OBS_CAPTUREResponse")
(setf (get commander::STOP_OBS_CAPTUREResponse :definition-)
      "---
string obs_name
float64[] obs_lat
float64[] obs_lng
string message
")



(provide :commander/STOP_OBS_CAPTURE "40b6ce9c486fd44682f1445d56896283")


