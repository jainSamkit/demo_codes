;; Auto-generated. Do not edit!


(when (boundp 'map_manager::Float1DArray)
  (if (not (find-package "MAP_MANAGER"))
    (make-package "MAP_MANAGER"))
  (shadow 'Float1DArray (find-package "MAP_MANAGER")))
(unless (find-package "MAP_MANAGER::FLOAT1DARRAY")
  (make-package "MAP_MANAGER::FLOAT1DARRAY"))

(in-package "ROS")
;;//! \htmlinclude Float1DArray.msg.html


(defclass map_manager::Float1DArray
  :super ros::object
  :slots (_single_coord ))

(defmethod map_manager::Float1DArray
  (:init
   (&key
    ((:single_coord __single_coord) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _single_coord __single_coord)
   self)
  (:single_coord
   (&optional __single_coord)
   (if __single_coord (setq _single_coord __single_coord)) _single_coord)
  (:serialization-length
   ()
   (+
    ;; float32[] _single_coord
    (* 4    (length _single_coord)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _single_coord
     (write-long (length _single_coord) s)
     (dotimes (i (length _single_coord))
       (sys::poke (elt _single_coord i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _single_coord
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _single_coord (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _single_coord i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get map_manager::Float1DArray :md5sum-) "1426ab7ee5dd52e03f7484660624498e")
(setf (get map_manager::Float1DArray :datatype-) "map_manager/Float1DArray")
(setf (get map_manager::Float1DArray :definition-)
      "float32[] single_coord

")



(provide :map_manager/Float1DArray "1426ab7ee5dd52e03f7484660624498e")


