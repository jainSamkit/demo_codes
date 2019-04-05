;; Auto-generated. Do not edit!


(when (boundp 'map_manager::SaveObstacles)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'SaveObstacles (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::SAVEOBSTACLES")
  (make-package "MAP_MANAGER::SAVEOBSTACLES"))
(unless (find-package "MAP_MANAGER::SAVEOBSTACLESREQUEST")
  (make-package "MAP_MANAGER::SAVEOBSTACLESREQUEST"))
(unless (find-package "MAP_MANAGER::SAVEOBSTACLESRESPONSE")
  (make-package "MAP_MANAGER::SAVEOBSTACLESRESPONSE"))

(in-package "ROS")





(defclass map_manager::SaveObstaclesRequest
  :super ros::object
  :slots (_map_id _obstacle_ids _lngs _lats ))

(defmethod map_manager::SaveObstaclesRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:obstacle_ids __obstacle_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:lngs __lngs) (let (r) (dotimes (i 0) (push (instance map_manager::Float1DArray :init) r)) r))
    ((:lats __lats) (let (r) (dotimes (i 0) (push (instance map_manager::Float1DArray :init) r)) r))
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _obstacle_ids __obstacle_ids)
   (setq _lngs __lngs)
   (setq _lats __lats)
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:obstacle_ids
   (&optional __obstacle_ids)
   (if __obstacle_ids (setq _obstacle_ids __obstacle_ids)) _obstacle_ids)
  (:lngs
   (&rest __lngs)
   (if (keywordp (car __lngs))
       (send* _lngs __lngs)
     (progn
       (if __lngs (setq _lngs (car __lngs)))
       _lngs)))
  (:lats
   (&rest __lats)
   (if (keywordp (car __lats))
       (send* _lats __lats)
     (progn
       (if __lats (setq _lats (car __lats)))
       _lats)))
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; string[] _obstacle_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _obstacle_ids)) 4
    ;; map_manager/Float1DArray[] _lngs
    (apply #'+ (send-all _lngs :serialization-length)) 4
    ;; map_manager/Float1DArray[] _lats
    (apply #'+ (send-all _lats :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; string[] _obstacle_ids
     (write-long (length _obstacle_ids) s)
     (dolist (elem _obstacle_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; map_manager/Float1DArray[] _lngs
     (write-long (length _lngs) s)
     (dolist (elem _lngs)
       (send elem :serialize s)
       )
     ;; map_manager/Float1DArray[] _lats
     (write-long (length _lats) s)
     (dolist (elem _lats)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _obstacle_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _obstacle_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; map_manager/Float1DArray[] _lngs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lngs (let (r) (dotimes (i n) (push (instance map_manager::Float1DArray :init) r)) r))
     (dolist (elem- _lngs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; map_manager/Float1DArray[] _lats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lats (let (r) (dotimes (i n) (push (instance map_manager::Float1DArray :init) r)) r))
     (dolist (elem- _lats)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass map_manager::SaveObstaclesResponse
  :super ros::object
  :slots (_success _message ))

(defmethod map_manager::SaveObstaclesResponse
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

(defclass map_manager::SaveObstacles
  :super ros::object
  :slots ())

(setf (get map_manager::SaveObstacles :md5sum-) "abd0dab24fc4e5b35491883975867c94")
(setf (get map_manager::SaveObstacles :datatype-) "map_manager/SaveObstacles")
(setf (get map_manager::SaveObstacles :request) map_manager::SaveObstaclesRequest)
(setf (get map_manager::SaveObstacles :response) map_manager::SaveObstaclesResponse)

(defmethod map_manager::SaveObstaclesRequest
  (:response () (instance map_manager::SaveObstaclesResponse :init)))

(setf (get map_manager::SaveObstaclesRequest :md5sum-) "abd0dab24fc4e5b35491883975867c94")
(setf (get map_manager::SaveObstaclesRequest :datatype-) "map_manager/SaveObstaclesRequest")
(setf (get map_manager::SaveObstaclesRequest :definition-)
      "string map_id
string[] obstacle_ids
Float1DArray[] lngs
Float1DArray[] lats

================================================================================
MSG: map_manager/Float1DArray
float32[] single_coord
---
bool success
string message

")

(setf (get map_manager::SaveObstaclesResponse :md5sum-) "abd0dab24fc4e5b35491883975867c94")
(setf (get map_manager::SaveObstaclesResponse :datatype-) "map_manager/SaveObstaclesResponse")
(setf (get map_manager::SaveObstaclesResponse :definition-)
      "string map_id
string[] obstacle_ids
Float1DArray[] lngs
Float1DArray[] lats

================================================================================
MSG: map_manager/Float1DArray
float32[] single_coord
---
bool success
string message

")



(provide :map_manager/SaveObstacles "abd0dab24fc4e5b35491883975867c94")


