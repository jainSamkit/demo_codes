;; Auto-generated. Do not edit!


(when (boundp 'commander::START_OBS_CAPTURE)
  (if (not (find-package "COMMANDER"))
    (make-package "COMMANDER"))
  (shadow 'START_OBS_CAPTURE (find-package "COMMANDER")))
(unless (find-package "COMMANDER::START_OBS_CAPTURE")
  (make-package "COMMANDER::START_OBS_CAPTURE"))
(unless (find-package "COMMANDER::START_OBS_CAPTUREREQUEST")
  (make-package "COMMANDER::START_OBS_CAPTUREREQUEST"))
(unless (find-package "COMMANDER::START_OBS_CAPTURERESPONSE")
  (make-package "COMMANDER::START_OBS_CAPTURERESPONSE"))

(in-package "ROS")





(defclass commander::START_OBS_CAPTURERequest
  :super ros::object
  :slots (_name ))

(defmethod commander::START_OBS_CAPTURERequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass commander::START_OBS_CAPTUREResponse
  :super ros::object
  :slots (_success _message ))

(defmethod commander::START_OBS_CAPTUREResponse
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

(defclass commander::START_OBS_CAPTURE
  :super ros::object
  :slots ())

(setf (get commander::START_OBS_CAPTURE :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get commander::START_OBS_CAPTURE :datatype-) "commander/START_OBS_CAPTURE")
(setf (get commander::START_OBS_CAPTURE :request) commander::START_OBS_CAPTURERequest)
(setf (get commander::START_OBS_CAPTURE :response) commander::START_OBS_CAPTUREResponse)

(defmethod commander::START_OBS_CAPTURERequest
  (:response () (instance commander::START_OBS_CAPTUREResponse :init)))

(setf (get commander::START_OBS_CAPTURERequest :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get commander::START_OBS_CAPTURERequest :datatype-) "commander/START_OBS_CAPTURERequest")
(setf (get commander::START_OBS_CAPTURERequest :definition-)
      "string name
---
bool success
string message
")

(setf (get commander::START_OBS_CAPTUREResponse :md5sum-) "d82dc6474dd88dad5e1615ab1b2ca74c")
(setf (get commander::START_OBS_CAPTUREResponse :datatype-) "commander/START_OBS_CAPTUREResponse")
(setf (get commander::START_OBS_CAPTUREResponse :definition-)
      "string name
---
bool success
string message
")



(provide :commander/START_OBS_CAPTURE "d82dc6474dd88dad5e1615ab1b2ca74c")


