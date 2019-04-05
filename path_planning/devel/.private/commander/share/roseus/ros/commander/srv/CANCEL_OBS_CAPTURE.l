;; Auto-generated. Do not edit!


(when (boundp 'commander::CANCEL_OBS_CAPTURE)
  (if (not (find-package "COMMANDER"))
    (make-package "COMMANDER"))
  (shadow 'CANCEL_OBS_CAPTURE (find-package "COMMANDER")))
(unless (find-package "COMMANDER::CANCEL_OBS_CAPTURE")
  (make-package "COMMANDER::CANCEL_OBS_CAPTURE"))
(unless (find-package "COMMANDER::CANCEL_OBS_CAPTUREREQUEST")
  (make-package "COMMANDER::CANCEL_OBS_CAPTUREREQUEST"))
(unless (find-package "COMMANDER::CANCEL_OBS_CAPTURERESPONSE")
  (make-package "COMMANDER::CANCEL_OBS_CAPTURERESPONSE"))

(in-package "ROS")





(defclass commander::CANCEL_OBS_CAPTURERequest
  :super ros::object
  :slots ())

(defmethod commander::CANCEL_OBS_CAPTURERequest
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

(defclass commander::CANCEL_OBS_CAPTUREResponse
  :super ros::object
  :slots (_success _message ))

(defmethod commander::CANCEL_OBS_CAPTUREResponse
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

(defclass commander::CANCEL_OBS_CAPTURE
  :super ros::object
  :slots ())

(setf (get commander::CANCEL_OBS_CAPTURE :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::CANCEL_OBS_CAPTURE :datatype-) "commander/CANCEL_OBS_CAPTURE")
(setf (get commander::CANCEL_OBS_CAPTURE :request) commander::CANCEL_OBS_CAPTURERequest)
(setf (get commander::CANCEL_OBS_CAPTURE :response) commander::CANCEL_OBS_CAPTUREResponse)

(defmethod commander::CANCEL_OBS_CAPTURERequest
  (:response () (instance commander::CANCEL_OBS_CAPTUREResponse :init)))

(setf (get commander::CANCEL_OBS_CAPTURERequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::CANCEL_OBS_CAPTURERequest :datatype-) "commander/CANCEL_OBS_CAPTURERequest")
(setf (get commander::CANCEL_OBS_CAPTURERequest :definition-)
      "---
bool success
string message
")

(setf (get commander::CANCEL_OBS_CAPTUREResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::CANCEL_OBS_CAPTUREResponse :datatype-) "commander/CANCEL_OBS_CAPTUREResponse")
(setf (get commander::CANCEL_OBS_CAPTUREResponse :definition-)
      "---
bool success
string message
")



(provide :commander/CANCEL_OBS_CAPTURE "937c9679a518e3a18d831e57125ea522")


