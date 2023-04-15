;; Auto-generated. Do not edit!


(when (boundp 'sever_client::ADDints)
  (if (not (find-package "SEVER_CLIENT"))
    (make-package "SEVER_CLIENT"))
  (shadow 'ADDints (find-package "SEVER_CLIENT")))
(unless (find-package "SEVER_CLIENT::ADDINTS")
  (make-package "SEVER_CLIENT::ADDINTS"))
(unless (find-package "SEVER_CLIENT::ADDINTSREQUEST")
  (make-package "SEVER_CLIENT::ADDINTSREQUEST"))
(unless (find-package "SEVER_CLIENT::ADDINTSRESPONSE")
  (make-package "SEVER_CLIENT::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass sever_client::ADDintsRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod sever_client::ADDintsRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sever_client::ADDintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod sever_client::ADDintsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sever_client::ADDints
  :super ros::object
  :slots ())

(setf (get sever_client::ADDints :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get sever_client::ADDints :datatype-) "sever_client/ADDints")
(setf (get sever_client::ADDints :request) sever_client::ADDintsRequest)
(setf (get sever_client::ADDints :response) sever_client::ADDintsResponse)

(defmethod sever_client::ADDintsRequest
  (:response () (instance sever_client::ADDintsResponse :init)))

(setf (get sever_client::ADDintsRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get sever_client::ADDintsRequest :datatype-) "sever_client/ADDintsRequest")
(setf (get sever_client::ADDintsRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get sever_client::ADDintsResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get sever_client::ADDintsResponse :datatype-) "sever_client/ADDintsResponse")
(setf (get sever_client::ADDintsResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :sever_client/ADDints "4781436a0c2affec8025955a6041e481")


