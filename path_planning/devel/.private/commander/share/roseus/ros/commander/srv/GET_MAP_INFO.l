;; Auto-generated. Do not edit!


(when (boundp 'commander::GET_MAP_INFO)
  (if (not (find-package "COMMANDER"))
    (make-package "COMMANDER"))
  (shadow 'GET_MAP_INFO (find-package "COMMANDER")))
(unless (find-package "COMMANDER::GET_MAP_INFO")
  (make-package "COMMANDER::GET_MAP_INFO"))
(unless (find-package "COMMANDER::GET_MAP_INFOREQUEST")
  (make-package "COMMANDER::GET_MAP_INFOREQUEST"))
(unless (find-package "COMMANDER::GET_MAP_INFORESPONSE")
  (make-package "COMMANDER::GET_MAP_INFORESPONSE"))

(in-package "ROS")





(defclass commander::GET_MAP_INFORequest
  :super ros::object
  :slots (_map_id _map_lat _map_lng _height_agl ))

(defmethod commander::GET_MAP_INFORequest
  (:init
   (&key
    ((:map_id __map_id) "")
    ((:map_lat __map_lat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:map_lng __map_lng) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:height_agl __height_agl) 0.0)
    )
   (send-super :init)
   (setq _map_id (string __map_id))
   (setq _map_lat __map_lat)
   (setq _map_lng __map_lng)
   (setq _height_agl (float __height_agl))
   self)
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:map_lat
   (&optional __map_lat)
   (if __map_lat (setq _map_lat __map_lat)) _map_lat)
  (:map_lng
   (&optional __map_lng)
   (if __map_lng (setq _map_lng __map_lng)) _map_lng)
  (:height_agl
   (&optional __height_agl)
   (if __height_agl (setq _height_agl __height_agl)) _height_agl)
  (:serialization-length
   ()
   (+
    ;; string _map_id
    4 (length _map_id)
    ;; float32[] _map_lat
    (* 4    (length _map_lat)) 4
    ;; float32[] _map_lng
    (* 4    (length _map_lng)) 4
    ;; float32 _height_agl
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; float32[] _map_lat
     (write-long (length _map_lat) s)
     (dotimes (i (length _map_lat))
       (sys::poke (elt _map_lat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _map_lng
     (write-long (length _map_lng) s)
     (dotimes (i (length _map_lng))
       (sys::poke (elt _map_lng i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _height_agl
       (sys::poke _height_agl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _map_lat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_lat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_lat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _map_lng
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_lng (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _map_lng i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _height_agl
     (setq _height_agl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass commander::GET_MAP_INFOResponse
  :super ros::object
  :slots (_success _message ))

(defmethod commander::GET_MAP_INFOResponse
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

(defclass commander::GET_MAP_INFO
  :super ros::object
  :slots ())

(setf (get commander::GET_MAP_INFO :md5sum-) "4e3b8f219e9670547e0390d1b9191aa9")
(setf (get commander::GET_MAP_INFO :datatype-) "commander/GET_MAP_INFO")
(setf (get commander::GET_MAP_INFO :request) commander::GET_MAP_INFORequest)
(setf (get commander::GET_MAP_INFO :response) commander::GET_MAP_INFOResponse)

(defmethod commander::GET_MAP_INFORequest
  (:response () (instance commander::GET_MAP_INFOResponse :init)))

(setf (get commander::GET_MAP_INFORequest :md5sum-) "4e3b8f219e9670547e0390d1b9191aa9")
(setf (get commander::GET_MAP_INFORequest :datatype-) "commander/GET_MAP_INFORequest")
(setf (get commander::GET_MAP_INFORequest :definition-)
      "string map_id
float32[] map_lat
float32[] map_lng
float32 height_agl
---
bool success
string message
")

(setf (get commander::GET_MAP_INFOResponse :md5sum-) "4e3b8f219e9670547e0390d1b9191aa9")
(setf (get commander::GET_MAP_INFOResponse :datatype-) "commander/GET_MAP_INFOResponse")
(setf (get commander::GET_MAP_INFOResponse :definition-)
      "string map_id
float32[] map_lat
float32[] map_lng
float32 height_agl
---
bool success
string message
")



(provide :commander/GET_MAP_INFO "4e3b8f219e9670547e0390d1b9191aa9")


