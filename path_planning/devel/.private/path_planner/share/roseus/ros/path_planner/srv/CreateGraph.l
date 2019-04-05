;; Auto-generated. Do not edit!


(when (boundp 'path_planner::CreateGraph)
  (if (not (find-package "PATH_PLANNER"))
    (make-package "PATH_PLANNER"))
  (shadow 'CreateGraph (find-package "PATH_PLANNER")))
(unless (find-package "PATH_PLANNER::CREATEGRAPH")
  (make-package "PATH_PLANNER::CREATEGRAPH"))
(unless (find-package "PATH_PLANNER::CREATEGRAPHREQUEST")
  (make-package "PATH_PLANNER::CREATEGRAPHREQUEST"))
(unless (find-package "PATH_PLANNER::CREATEGRAPHRESPONSE")
  (make-package "PATH_PLANNER::CREATEGRAPHRESPONSE"))

(in-package "ROS")





(defclass path_planner::CreateGraphRequest
  :super ros::object
  :slots (_map_id _roadmap_growth_time _roadmap_expansion_time ))

(defmethod path_planner::CreateGraphRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:roadmap_growth_time __roadmap_growth_time) 0)
    ((:roadmap_expansion_time __roadmap_expansion_time) 0)
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _roadmap_growth_time (round __roadmap_growth_time))
   (setq _roadmap_expansion_time (round __roadmap_expansion_time))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:roadmap_growth_time
   (&optional __roadmap_growth_time)
   (if __roadmap_growth_time (setq _roadmap_growth_time __roadmap_growth_time)) _roadmap_growth_time)
  (:roadmap_expansion_time
   (&optional __roadmap_expansion_time)
   (if __roadmap_expansion_time (setq _roadmap_expansion_time __roadmap_expansion_time)) _roadmap_expansion_time)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; int8 _roadmap_growth_time
    1
    ;; int8 _roadmap_expansion_time
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; int8 _roadmap_growth_time
       (write-byte _roadmap_growth_time s)
     ;; int8 _roadmap_expansion_time
       (write-byte _roadmap_expansion_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _roadmap_growth_time
     (setq _roadmap_growth_time (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _roadmap_growth_time 127) (setq _roadmap_growth_time (- _roadmap_growth_time 256)))
   ;; int8 _roadmap_expansion_time
     (setq _roadmap_expansion_time (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _roadmap_expansion_time 127) (setq _roadmap_expansion_time (- _roadmap_expansion_time 256)))
   ;;
   self)
  )

(defclass path_planner::CreateGraphResponse
  :super ros::object
  :slots (_success _message ))

(defmethod path_planner::CreateGraphResponse
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

(defclass path_planner::CreateGraph
  :super ros::object
  :slots ())

(setf (get path_planner::CreateGraph :md5sum-) "f5d270e8ce37df345157a107cd8c1f39")
(setf (get path_planner::CreateGraph :datatype-) "path_planner/CreateGraph")
(setf (get path_planner::CreateGraph :request) path_planner::CreateGraphRequest)
(setf (get path_planner::CreateGraph :response) path_planner::CreateGraphResponse)

(defmethod path_planner::CreateGraphRequest
  (:response () (instance path_planner::CreateGraphResponse :init)))

(setf (get path_planner::CreateGraphRequest :md5sum-) "f5d270e8ce37df345157a107cd8c1f39")
(setf (get path_planner::CreateGraphRequest :datatype-) "path_planner/CreateGraphRequest")
(setf (get path_planner::CreateGraphRequest :definition-)
      "string map_id
int8 roadmap_growth_time
int8 roadmap_expansion_time
---
bool success
string message

")

(setf (get path_planner::CreateGraphResponse :md5sum-) "f5d270e8ce37df345157a107cd8c1f39")
(setf (get path_planner::CreateGraphResponse :datatype-) "path_planner/CreateGraphResponse")
(setf (get path_planner::CreateGraphResponse :definition-)
      "string map_id
int8 roadmap_growth_time
int8 roadmap_expansion_time
---
bool success
string message

")



(provide :path_planner/CreateGraph "f5d270e8ce37df345157a107cd8c1f39")


