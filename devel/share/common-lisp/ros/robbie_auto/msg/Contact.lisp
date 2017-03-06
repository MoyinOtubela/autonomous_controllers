; Auto-generated. Do not edit!


(cl:in-package robbie_auto-msg)


;//! \htmlinclude Contact.msg.html

(cl:defclass <Contact> (roslisp-msg-protocol:ros-message)
  ((shank
    :reader shank
    :initarg :shank
    :type cl:boolean
    :initform cl:nil)
   (lhm
    :reader lhm
    :initarg :lhm
    :type cl:boolean
    :initform cl:nil)
   (stabilizer
    :reader stabilizer
    :initarg :stabilizer
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Contact (<Contact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Contact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Contact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robbie_auto-msg:<Contact> is deprecated: use robbie_auto-msg:Contact instead.")))

(cl:ensure-generic-function 'shank-val :lambda-list '(m))
(cl:defmethod shank-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_auto-msg:shank-val is deprecated.  Use robbie_auto-msg:shank instead.")
  (shank m))

(cl:ensure-generic-function 'lhm-val :lambda-list '(m))
(cl:defmethod lhm-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_auto-msg:lhm-val is deprecated.  Use robbie_auto-msg:lhm instead.")
  (lhm m))

(cl:ensure-generic-function 'stabilizer-val :lambda-list '(m))
(cl:defmethod stabilizer-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_auto-msg:stabilizer-val is deprecated.  Use robbie_auto-msg:stabilizer instead.")
  (stabilizer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Contact>) ostream)
  "Serializes a message object of type '<Contact>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shank) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lhm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stabilizer) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Contact>) istream)
  "Deserializes a message object of type '<Contact>"
    (cl:setf (cl:slot-value msg 'shank) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lhm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stabilizer) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Contact>)))
  "Returns string type for a message object of type '<Contact>"
  "robbie_auto/Contact")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Contact)))
  "Returns string type for a message object of type 'Contact"
  "robbie_auto/Contact")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Contact>)))
  "Returns md5sum for a message object of type '<Contact>"
  "a1098ecc6338cffcc410aeee87ea5720")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Contact)))
  "Returns md5sum for a message object of type 'Contact"
  "a1098ecc6338cffcc410aeee87ea5720")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Contact>)))
  "Returns full string definition for message of type '<Contact>"
  (cl:format cl:nil "bool shank~%bool lhm~%bool stabilizer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Contact)))
  "Returns full string definition for message of type 'Contact"
  (cl:format cl:nil "bool shank~%bool lhm~%bool stabilizer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Contact>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Contact>))
  "Converts a ROS message object to a list"
  (cl:list 'Contact
    (cl:cons ':shank (shank msg))
    (cl:cons ':lhm (lhm msg))
    (cl:cons ':stabilizer (stabilizer msg))
))
