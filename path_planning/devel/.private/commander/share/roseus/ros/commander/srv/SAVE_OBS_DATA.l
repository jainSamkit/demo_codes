;; Auto-generated. Do not edit!


(when (boundp 'commander::SAVE_OBS_DATA)
  (if (not (find-package "COMMANDER"))
    (make-package "COMMANDER"))
  (shadow 'SAVE_OBS_DATA (find-package "COMMANDER")))
(unless (find-package "COMMANDER::SAVE_OBS_DATA")
  (make-package "COMMANDER::SAVE_OBS_DATA"))
(unless (find-package "COMMANDER::SAVE_OBS_DATAREQUEST")
  (make-package "COMMANDER::SAVE_OBS_DATAREQUEST"))
(unless (find-package "COMMANDER::SAVE_OBS_DATARESPONSE")
  (make-package "COMMANDER::SAVE_OBS_DATARESPONSE"))

(in-package "ROS")





(defclass commander::SAVE_OBS_DATARequest
  :super ros::object
  :slots ())

(defmethod commander::SAVE_OBS_DATARequest
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

(defclass commander::SAVE_OBS_DATAResponse
  :super ros::object
  :slots (_success _message ))

(defmethod commander::SAVE_OBS_DATAResponse
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

(defclass commander::SAVE_OBS_DATA
  :super ros::object
  :slots ())

(setf (get commander::SAVE_OBS_DATA :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::SAVE_OBS_DATA :datatype-) "commander/SAVE_OBS_DATA")
(setf (get commander::SAVE_OBS_DATA :request) commander::SAVE_OBS_DATARequest)
(setf (get commander::SAVE_OBS_DATA :response) commander::SAVE_OBS_DATAResponse)

(defmethod commander::SAVE_OBS_DATARequest
  (:response () (instance commander::SAVE_OBS_DATAResponse :init)))

(setf (get commander::SAVE_OBS_DATARequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::SAVE_OBS_DATARequest :datatype-) "commander/SAVE_OBS_DATARequest")
(setf (get commander::SAVE_OBS_DATARequest :definition-)
      "---
bool success
string message
")

(setf (get commander::SAVE_OBS_DATAResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get commander::SAVE_OBS_DATAResponse :datatype-) "commander/SAVE_OBS_DATAResponse")
(setf (get commander::SAVE_OBS_DATAResponse :definition-)
      "---
bool success
string message
")



(provide :commander/SAVE_OBS_DATA "937c9679a518e3a18d831e57125ea522")


