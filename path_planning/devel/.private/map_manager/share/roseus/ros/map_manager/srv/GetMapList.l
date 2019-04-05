;; Auto-generated. Do not edit!


(when (boundp 'map_manager::GetMapList)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'GetMapList (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::GETMAPLIST")
  (make-package "MAP_MANAGER::GETMAPLIST"))
(unless (find-package "MAP_MANAGER::GETMAPLISTREQUEST")
  (make-package "MAP_MANAGER::GETMAPLISTREQUEST"))
(unless (find-package "MAP_MANAGER::GETMAPLISTRESPONSE")
  (make-package "MAP_MANAGER::GETMAPLISTRESPONSE"))

(in-package "ROS")





(defclass map_manager::GetMapListRequest
  :super ros::object
  :slots ())

(defmethod map_manager::GetMapListRequest
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

(defclass map_manager::GetMapListResponse
  :super ros::object
  :slots (_success _message _map_ids ))

(defmethod map_manager::GetMapListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:map_ids __map_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _map_ids __map_ids)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:map_ids
   (&optional __map_ids)
   (if __map_ids (setq _map_ids __map_ids)) _map_ids)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; string[] _map_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _map_ids
     (write-long (length _map_ids) s)
     (dolist (elem _map_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _map_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass map_manager::GetMapList
  :super ros::object
  :slots ())

(setf (get map_manager::GetMapList :md5sum-) "fcae05604cd2e87fd94fb58351b33527")
(setf (get map_manager::GetMapList :datatype-) "map_manager/GetMapList")
(setf (get map_manager::GetMapList :request) map_manager::GetMapListRequest)
(setf (get map_manager::GetMapList :response) map_manager::GetMapListResponse)

(defmethod map_manager::GetMapListRequest
  (:response () (instance map_manager::GetMapListResponse :init)))

(setf (get map_manager::GetMapListRequest :md5sum-) "fcae05604cd2e87fd94fb58351b33527")
(setf (get map_manager::GetMapListRequest :datatype-) "map_manager/GetMapListRequest")
(setf (get map_manager::GetMapListRequest :definition-)
      "---
bool success
string message
string[] map_ids

")

(setf (get map_manager::GetMapListResponse :md5sum-) "fcae05604cd2e87fd94fb58351b33527")
(setf (get map_manager::GetMapListResponse :datatype-) "map_manager/GetMapListResponse")
(setf (get map_manager::GetMapListResponse :definition-)
      "---
bool success
string message
string[] map_ids

")



(provide :map_manager/GetMapList "fcae05604cd2e87fd94fb58351b33527")


