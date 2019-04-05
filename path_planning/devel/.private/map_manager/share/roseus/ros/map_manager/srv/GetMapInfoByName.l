;; Auto-generated. Do not edit!


(when (boundp 'map_manager::GetMapInfoByName)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'GetMapInfoByName (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::GETMAPINFOBYNAME")
  (make-package "MAP_MANAGER::GETMAPINFOBYNAME"))
(unless (find-package "MAP_MANAGER::GETMAPINFOBYNAMEREQUEST")
  (make-package "MAP_MANAGER::GETMAPINFOBYNAMEREQUEST"))
(unless (find-package "MAP_MANAGER::GETMAPINFOBYNAMERESPONSE")
  (make-package "MAP_MANAGER::GETMAPINFOBYNAMERESPONSE"))

(in-package "ROS")





(defclass map_manager::GetMapInfoByNameRequest
  :super ros::object
  :slots (_map_id ))

(defmethod map_manager::GetMapInfoByNameRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass map_manager::GetMapInfoByNameResponse
  :super ros::object
  :slots (_success _message _map_lng _map_lat _obstacle_ids _obstacle_lngs _obstacle_lats ))

(defmethod map_manager::GetMapInfoByNameResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:map_lng __map_lng) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:map_lat __map_lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obstacle_ids __obstacle_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:obstacle_lngs __obstacle_lngs) (let (r) (dotimes (i 0) (push (instance map_manager::Float1DArray :init) r)) r))
    ((:obstacle_lats __obstacle_lats) (let (r) (dotimes (i 0) (push (instance map_manager::Float1DArray :init) r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _map_lng __map_lng)
   (setq _map_lat __map_lat)
   (setq _obstacle_ids __obstacle_ids)
   (setq _obstacle_lngs __obstacle_lngs)
   (setq _obstacle_lats __obstacle_lats)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:map_lng
   (&optional __map_lng)
   (if __map_lng (setq _map_lng __map_lng)) _map_lng)
  (:map_lat
   (&optional __map_lat)
   (if __map_lat (setq _map_lat __map_lat)) _map_lat)
  (:obstacle_ids
   (&optional __obstacle_ids)
   (if __obstacle_ids (setq _obstacle_ids __obstacle_ids)) _obstacle_ids)
  (:obstacle_lngs
   (&rest __obstacle_lngs)
   (if (keywordp (car __obstacle_lngs))
       (send* _obstacle_lngs __obstacle_lngs)
     (progn
       (if __obstacle_lngs (setq _obstacle_lngs (car __obstacle_lngs)))
       _obstacle_lngs)))
  (:obstacle_lats
   (&rest __obstacle_lats)
   (if (keywordp (car __obstacle_lats))
       (send* _obstacle_lats __obstacle_lats)
     (progn
       (if __obstacle_lats (setq _obstacle_lats (car __obstacle_lats)))
       _obstacle_lats)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; float32[] _map_lng
    (* 4    (length _map_lng)) 4
    ;; float32[] _map_lat
    (* 4    (length _map_lat)) 4
    ;; string[] _obstacle_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _obstacle_ids)) 4
    ;; map_manager/Float1DArray[] _obstacle_lngs
    (apply #'+ (send-all _obstacle_lngs :serialization-length)) 4
    ;; map_manager/Float1DArray[] _obstacle_lats
    (apply #'+ (send-all _obstacle_lats :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32[] _map_lng
     (write-long (length _map_lng) s)
     (dotimes (i (length _map_lng))
       (sys::poke (elt _map_lng i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _map_lat
     (write-long (length _map_lat) s)
     (dotimes (i (length _map_lat))
       (sys::poke (elt _map_lat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _obstacle_ids
     (write-long (length _obstacle_ids) s)
     (dolist (elem _obstacle_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;; map_manager/Float1DArray[] _obstacle_lngs
     (write-long (length _obstacle_lngs) s)
     (dolist (elem _obstacle_lngs)
       (send elem :serialize s)
       )
     ;; map_manager/Float1DArray[] _obstacle_lats
     (write-long (length _obstacle_lats) s)
     (dolist (elem _obstacle_lats)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _map_lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_lng i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _map_lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_lat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _obstacle_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _obstacle_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; map_manager/Float1DArray[] _obstacle_lngs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_lngs (let (r) (dotimes (i n) (push (instance map_manager::Float1DArray :init) r)) r))
     (dolist (elem- _obstacle_lngs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; map_manager/Float1DArray[] _obstacle_lats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_lats (let (r) (dotimes (i n) (push (instance map_manager::Float1DArray :init) r)) r))
     (dolist (elem- _obstacle_lats)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass map_manager::GetMapInfoByName
  :super ros::object
  :slots ())

(setf (get map_manager::GetMapInfoByName :md5sum-) "9853cd9476867110697e3e2277194759")
(setf (get map_manager::GetMapInfoByName :datatype-) "map_manager/GetMapInfoByName")
(setf (get map_manager::GetMapInfoByName :request) map_manager::GetMapInfoByNameRequest)
(setf (get map_manager::GetMapInfoByName :response) map_manager::GetMapInfoByNameResponse)

(defmethod map_manager::GetMapInfoByNameRequest
  (:response () (instance map_manager::GetMapInfoByNameResponse :init)))

(setf (get map_manager::GetMapInfoByNameRequest :md5sum-) "9853cd9476867110697e3e2277194759")
(setf (get map_manager::GetMapInfoByNameRequest :datatype-) "map_manager/GetMapInfoByNameRequest")
(setf (get map_manager::GetMapInfoByNameRequest :definition-)
      "string map_id
---
bool success
string message
float32[] map_lng
float32[] map_lat
string[] obstacle_ids
Float1DArray[] obstacle_lngs
Float1DArray[] obstacle_lats


================================================================================
MSG: map_manager/Float1DArray
float32[] single_coord
")

(setf (get map_manager::GetMapInfoByNameResponse :md5sum-) "9853cd9476867110697e3e2277194759")
(setf (get map_manager::GetMapInfoByNameResponse :datatype-) "map_manager/GetMapInfoByNameResponse")
(setf (get map_manager::GetMapInfoByNameResponse :definition-)
      "string map_id
---
bool success
string message
float32[] map_lng
float32[] map_lat
string[] obstacle_ids
Float1DArray[] obstacle_lngs
Float1DArray[] obstacle_lats


================================================================================
MSG: map_manager/Float1DArray
float32[] single_coord
")



(provide :map_manager/GetMapInfoByName "9853cd9476867110697e3e2277194759")


