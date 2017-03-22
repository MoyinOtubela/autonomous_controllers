; Auto-generated. Do not edit!


(cl:in-package robbie_stability-msg)


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
    :initform cl:nil)
   (stabilizer_on
    :reader stabilizer_on
    :initarg :stabilizer_on
    :type cl:string
    :initform "")
   (shank_on
    :reader shank_on
    :initarg :shank_on
    :type cl:string
    :initform "")
   (lhm_on
    :reader lhm_on
    :initarg :lhm_on
    :type cl:string
    :initform "")
   (stabilizer_location
    :reader stabilizer_location
    :initarg :stabilizer_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (shank_location
    :reader shank_location
    :initarg :shank_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (lhm_location
    :reader lhm_location
    :initarg :lhm_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Contact (<Contact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Contact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Contact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robbie_stability-msg:<Contact> is deprecated: use robbie_stability-msg:Contact instead.")))

(cl:ensure-generic-function 'shank-val :lambda-list '(m))
(cl:defmethod shank-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:shank-val is deprecated.  Use robbie_stability-msg:shank instead.")
  (shank m))

(cl:ensure-generic-function 'lhm-val :lambda-list '(m))
(cl:defmethod lhm-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:lhm-val is deprecated.  Use robbie_stability-msg:lhm instead.")
  (lhm m))

(cl:ensure-generic-function 'stabilizer-val :lambda-list '(m))
(cl:defmethod stabilizer-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:stabilizer-val is deprecated.  Use robbie_stability-msg:stabilizer instead.")
  (stabilizer m))

(cl:ensure-generic-function 'stabilizer_on-val :lambda-list '(m))
(cl:defmethod stabilizer_on-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:stabilizer_on-val is deprecated.  Use robbie_stability-msg:stabilizer_on instead.")
  (stabilizer_on m))

(cl:ensure-generic-function 'shank_on-val :lambda-list '(m))
(cl:defmethod shank_on-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:shank_on-val is deprecated.  Use robbie_stability-msg:shank_on instead.")
  (shank_on m))

(cl:ensure-generic-function 'lhm_on-val :lambda-list '(m))
(cl:defmethod lhm_on-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:lhm_on-val is deprecated.  Use robbie_stability-msg:lhm_on instead.")
  (lhm_on m))

(cl:ensure-generic-function 'stabilizer_location-val :lambda-list '(m))
(cl:defmethod stabilizer_location-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:stabilizer_location-val is deprecated.  Use robbie_stability-msg:stabilizer_location instead.")
  (stabilizer_location m))

(cl:ensure-generic-function 'shank_location-val :lambda-list '(m))
(cl:defmethod shank_location-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:shank_location-val is deprecated.  Use robbie_stability-msg:shank_location instead.")
  (shank_location m))

(cl:ensure-generic-function 'lhm_location-val :lambda-list '(m))
(cl:defmethod lhm_location-val ((m <Contact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robbie_stability-msg:lhm_location-val is deprecated.  Use robbie_stability-msg:lhm_location instead.")
  (lhm_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Contact>) ostream)
  "Serializes a message object of type '<Contact>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shank) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lhm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stabilizer) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stabilizer_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stabilizer_on))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shank_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shank_on))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lhm_on))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lhm_on))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stabilizer_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shank_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lhm_location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Contact>) istream)
  "Deserializes a message object of type '<Contact>"
    (cl:setf (cl:slot-value msg 'shank) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lhm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stabilizer) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stabilizer_on) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stabilizer_on) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shank_on) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shank_on) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lhm_on) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lhm_on) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stabilizer_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shank_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lhm_location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Contact>)))
  "Returns string type for a message object of type '<Contact>"
  "robbie_stability/Contact")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Contact)))
  "Returns string type for a message object of type 'Contact"
  "robbie_stability/Contact")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Contact>)))
  "Returns md5sum for a message object of type '<Contact>"
  "031fc837dcc9ed46474cb01cba5abfbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Contact)))
  "Returns md5sum for a message object of type 'Contact"
  "031fc837dcc9ed46474cb01cba5abfbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Contact>)))
  "Returns full string definition for message of type '<Contact>"
  (cl:format cl:nil "bool shank~%bool lhm~%bool stabilizer~%~%string stabilizer_on~%string shank_on~%string lhm_on~%~%geometry_msgs/Point stabilizer_location~%geometry_msgs/Point shank_location~%geometry_msgs/Point lhm_location~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Contact)))
  "Returns full string definition for message of type 'Contact"
  (cl:format cl:nil "bool shank~%bool lhm~%bool stabilizer~%~%string stabilizer_on~%string shank_on~%string lhm_on~%~%geometry_msgs/Point stabilizer_location~%geometry_msgs/Point shank_location~%geometry_msgs/Point lhm_location~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Contact>))
  (cl:+ 0
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'stabilizer_on))
     4 (cl:length (cl:slot-value msg 'shank_on))
     4 (cl:length (cl:slot-value msg 'lhm_on))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stabilizer_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shank_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lhm_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Contact>))
  "Converts a ROS message object to a list"
  (cl:list 'Contact
    (cl:cons ':shank (shank msg))
    (cl:cons ':lhm (lhm msg))
    (cl:cons ':stabilizer (stabilizer msg))
    (cl:cons ':stabilizer_on (stabilizer_on msg))
    (cl:cons ':shank_on (shank_on msg))
    (cl:cons ':lhm_on (lhm_on msg))
    (cl:cons ':stabilizer_location (stabilizer_location msg))
    (cl:cons ':shank_location (shank_location msg))
    (cl:cons ':lhm_location (lhm_location msg))
))
