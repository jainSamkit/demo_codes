;; Auto-generated. Do not edit!


(when (boundp 'map_manager::StartMission)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'StartMission (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::STARTMISSION")
  (make-package "MAP_MANAGER::STARTMISSION"))
(unless (find-package "MAP_MANAGER::STARTMISSIONREQUEST")
  (make-package "MAP_MANAGER::STARTMISSIONREQUEST"))
(unless (find-package "MAP_MANAGER::STARTMISSIONRESPONSE")
  (make-package "MAP_MANAGER::STARTMISSIONRESPONSE"))

(in-package "ROS")





(defclass map_manager::StartMissionRequest
  :super ros::object
  :slots (_map_id _start_lng _start_lat _target_lng _target_lat ))

(defmethod map_manager::StartMissionRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:start_lng __start_lng) 0.0)
    ((:start_lat __start_lat) 0.0)
    ((:target_lng __target_lng) 0.0)
    ((:target_lat __target_lat) 0.0)
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _start_lng (float __start_lng))
   (setq _start_lat (float __start_lat))
   (setq _target_lng (float __target_lng))
   (setq _target_lat (float __target_lat))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:start_lng
   (&optional __start_lng)
   (if __start_lng (setq _start_lng __start_lng)) _start_lng)
  (:start_lat
   (&optional __start_lat)
   (if __start_lat (setq _start_lat __start_lat)) _start_lat)
  (:target_lng
   (&optional __target_lng)
   (if __target_lng (setq _target_lng __target_lng)) _target_lng)
  (:target_lat
   (&optional __target_lat)
   (if __target_lat (setq _target_lat __target_lat)) _target_lat)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; float32 _start_lng
    4
    ;; float32 _start_lat
    4
    ;; float32 _target_lng
    4
    ;; float32 _target_lat
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; float32 _start_lng
       (sys::poke _start_lng (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_lat
       (sys::poke _start_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_lng
       (sys::poke _target_lng (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_lat
       (sys::poke _target_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _start_lng
     (setq _start_lng (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_lat
     (setq _start_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_lng
     (setq _target_lng (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_lat
     (setq _target_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass map_manager::StartMissionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod map_manager::StartMissionResponse
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

(defclass map_manager::StartMission
  :super ros::object
  :slots ())

(setf (get map_manager::StartMission :md5sum-) "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(setf (get map_manager::StartMission :datatype-) "map_manager/StartMission")
(setf (get map_manager::StartMission :request) map_manager::StartMissionRequest)
(setf (get map_manager::StartMission :response) map_manager::StartMissionResponse)

(defmethod map_manager::StartMissionRequest
  (:response () (instance map_manager::StartMissionResponse :init)))

(setf (get map_manager::StartMissionRequest :md5sum-) "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(setf (get map_manager::StartMissionRequest :datatype-) "map_manager/StartMissionRequest")
(setf (get map_manager::StartMissionRequest :definition-)
      "string map_id
float32 start_lng
float32 start_lat
float32 target_lng
float32 target_lat
---
bool success
string message

")

(setf (get map_manager::StartMissionResponse :md5sum-) "55f40e5bb59a86c5c866c1e3dc5d2ad5")
(setf (get map_manager::StartMissionResponse :datatype-) "map_manager/StartMissionResponse")
(setf (get map_manager::StartMissionResponse :definition-)
      "string map_id
float32 start_lng
float32 start_lat
float32 target_lng
float32 target_lat
---
bool success
string message

")



(provide :map_manager/StartMission "55f40e5bb59a86c5c866c1e3dc5d2ad5")


