;; Auto-generated. Do not edit!


(when (boundp 'hello::Person)
  (if (not (find-package "HELLO"))
    (make-package "HELLO"))
  (shadow 'Person (find-package "HELLO")))
(unless (find-package "HELLO::PERSON")
  (make-package "HELLO::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(defclass hello::Person
  :super ros::object
  :slots (_anme _age _height ))

(defmethod hello::Person
  (:init
   (&key
    ((:anme __anme) "")
    ((:age __age) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _anme (string __anme))
   (setq _age (round __age))
   (setq _height (float __height))
   self)
  (:anme
   (&optional __anme)
   (if __anme (setq _anme __anme)) _anme)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _anme
    4 (length _anme)
    ;; int32 _age
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _anme
       (write-long (length _anme) s) (princ _anme s)
     ;; int32 _age
       (write-long _age s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _anme
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _anme (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hello::Person :md5sum-) "f2e2fee813db83ff265842421e1a123e")
(setf (get hello::Person :datatype-) "hello/Person")
(setf (get hello::Person :definition-)
      "string anme
int32 age
float32 height


")



(provide :hello/Person "f2e2fee813db83ff265842421e1a123e")


