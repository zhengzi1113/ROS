;; Auto-generated. Do not edit!


(when (boundp 'action::AddIntsResult)
  (if (not (find-package "ACTION"))
    (make-package "ACTION"))
  (shadow 'AddIntsResult (find-package "ACTION")))
(unless (find-package "ACTION::ADDINTSRESULT")
  (make-package "ACTION::ADDINTSRESULT"))

(in-package "ROS")
;;//! \htmlinclude AddIntsResult.msg.html


(defclass action::AddIntsResult
  :super ros::object
  :slots (_result ))

(defmethod action::AddIntsResult
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get action::AddIntsResult :md5sum-) "034a8e20d6a306665e3a5b340fab3f09")
(setf (get action::AddIntsResult :datatype-) "action/AddIntsResult")
(setf (get action::AddIntsResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======


#2.最终响应变量
int32 result

")



(provide :action/AddIntsResult "034a8e20d6a306665e3a5b340fab3f09")


