; Auto-generated. Do not edit!


(cl:in-package sever_client-srv)


;//! \htmlinclude ADDints-request.msg.html

(cl:defclass <ADDints-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass ADDints-request (<ADDints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADDints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADDints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sever_client-srv:<ADDints-request> is deprecated: use sever_client-srv:ADDints-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <ADDints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sever_client-srv:num1-val is deprecated.  Use sever_client-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <ADDints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sever_client-srv:num2-val is deprecated.  Use sever_client-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADDints-request>) ostream)
  "Serializes a message object of type '<ADDints-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADDints-request>) istream)
  "Deserializes a message object of type '<ADDints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADDints-request>)))
  "Returns string type for a service object of type '<ADDints-request>"
  "sever_client/ADDintsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDints-request)))
  "Returns string type for a service object of type 'ADDints-request"
  "sever_client/ADDintsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADDints-request>)))
  "Returns md5sum for a message object of type '<ADDints-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADDints-request)))
  "Returns md5sum for a message object of type 'ADDints-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADDints-request>)))
  "Returns full string definition for message of type '<ADDints-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADDints-request)))
  "Returns full string definition for message of type 'ADDints-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADDints-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADDints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ADDints-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude ADDints-response.msg.html

(cl:defclass <ADDints-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass ADDints-response (<ADDints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADDints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADDints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sever_client-srv:<ADDints-response> is deprecated: use sever_client-srv:ADDints-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <ADDints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sever_client-srv:sum-val is deprecated.  Use sever_client-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADDints-response>) ostream)
  "Serializes a message object of type '<ADDints-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADDints-response>) istream)
  "Deserializes a message object of type '<ADDints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADDints-response>)))
  "Returns string type for a service object of type '<ADDints-response>"
  "sever_client/ADDintsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDints-response)))
  "Returns string type for a service object of type 'ADDints-response"
  "sever_client/ADDintsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADDints-response>)))
  "Returns md5sum for a message object of type '<ADDints-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADDints-response)))
  "Returns md5sum for a message object of type 'ADDints-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADDints-response>)))
  "Returns full string definition for message of type '<ADDints-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADDints-response)))
  "Returns full string definition for message of type 'ADDints-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADDints-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADDints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ADDints-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ADDints)))
  'ADDints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ADDints)))
  'ADDints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADDints)))
  "Returns string type for a service object of type '<ADDints>"
  "sever_client/ADDints")