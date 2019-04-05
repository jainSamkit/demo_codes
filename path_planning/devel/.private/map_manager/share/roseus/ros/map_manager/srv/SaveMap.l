;; Auto-generated. Do not edit!


(when (boundp 'map_manager::SaveMap)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'SaveMap (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::SAVEMAP")
  (make-package "MAP_MANAGER::SAVEMAP"))
(unless (find-package "MAP_MANAGER::SAVEMAPREQUEST")
  (make-package "MAP_MANAGER::SAVEMAPREQUEST"))
(unless (find-package "MAP_MANAGER::SAVEMAPRESPONSE")
  (make-package "MAP_MANAGER::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass map_manager::SaveMapRequest
  :super ros::object
  :slots (_map_id _height_agl _lng _lat ))

(defmethod map_manager::SaveMapRequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:height_agl __height_agl) 0.0)
    ((:lng __lng) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lat __lat) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _height_agl (float __height_agl))
   (setq _lng __lng)
   (setq _lat __lat)
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:height_agl
   (&optional __height_agl)
   (if __height_agl (setq _height_agl __height_agl)) _height_agl)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; float32 _height_agl
    4
    ;; float32[] _lng
    (* 4    (length _lng)) 4
    ;; float32[] _lat
    (* 4    (length _lat)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; float32 _height_agl
       (sys::poke _height_agl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _lng
     (write-long (length _lng) s)
     (dotimes (i (length _lng))
       (sys::poke (elt _lng i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _lat
     (write-long (length _lat) s)
     (dotimes (i (length _lat))
       (sys::poke (elt _lat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _height_agl
     (setq _height_agl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lng i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass map_manager::SaveMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod map_manager::SaveMapResponse
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

(defclass map_manager::SaveMap
  :super ros::object
  :slots ())

(setf (get map_manager::SaveMap :md5sum-) "19e2ab991a9960cc2be2f5217abb7783")
(setf (get map_manager::SaveMap :datatype-) "map_manager/SaveMap")
(setf (get map_manager::SaveMap :request) map_manager::SaveMapRequest)
(setf (get map_manager::SaveMap :response) map_manager::SaveMapResponse)

(defmethod map_manager::SaveMapRequest
  (:response () (instance map_manager::SaveMapResponse :init)))

(setf (get map_manager::SaveMapRequest :md5sum-) "19e2ab991a9960cc2be2f5217abb7783")
(setf (get map_manager::SaveMapRequest :datatype-) "map_manager/SaveMapRequest")
(setf (get map_manager::SaveMapRequest :definition-)
      "string map_id
float32 height_agl
float32[] lng
float32[] lat
---
bool success
string message


")

(setf (get map_manager::SaveMapResponse :md5sum-) "19e2ab991a9960cc2be2f5217abb7783")
(setf (get map_manager::SaveMapResponse :datatype-) "map_manager/SaveMapResponse")
(setf (get map_manager::SaveMapResponse :definition-)
      "string map_id
float32 height_agl
float32[] lng
float32[] lat
---
bool success
string message


")



(provide :map_manager/SaveMap "19e2ab991a9960cc2be2f5217abb7783")


