; Auto-generated. Do not edit!


(cl:in-package dh_gripper_msgs-msg)


;//! \htmlinclude GripperCtrl.msg.html

(cl:defclass <GripperCtrl> (roslisp-msg-protocol:ros-message)
  ((initialize
    :reader initialize
    :initarg :initialize
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass GripperCtrl (<GripperCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dh_gripper_msgs-msg:<GripperCtrl> is deprecated: use dh_gripper_msgs-msg:GripperCtrl instead.")))

(cl:ensure-generic-function 'initialize-val :lambda-list '(m))
(cl:defmethod initialize-val ((m <GripperCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:initialize-val is deprecated.  Use dh_gripper_msgs-msg:initialize instead.")
  (initialize m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GripperCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:position-val is deprecated.  Use dh_gripper_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GripperCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:force-val is deprecated.  Use dh_gripper_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GripperCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dh_gripper_msgs-msg:speed-val is deprecated.  Use dh_gripper_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperCtrl>) ostream)
  "Serializes a message object of type '<GripperCtrl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initialize) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperCtrl>) istream)
  "Deserializes a message object of type '<GripperCtrl>"
    (cl:setf (cl:slot-value msg 'initialize) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperCtrl>)))
  "Returns string type for a message object of type '<GripperCtrl>"
  "dh_gripper_msgs/GripperCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperCtrl)))
  "Returns string type for a message object of type 'GripperCtrl"
  "dh_gripper_msgs/GripperCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperCtrl>)))
  "Returns md5sum for a message object of type '<GripperCtrl>"
  "9dac35721dba07cb7d14035fd6884134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperCtrl)))
  "Returns md5sum for a message object of type 'GripperCtrl"
  "9dac35721dba07cb7d14035fd6884134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperCtrl>)))
  "Returns full string definition for message of type '<GripperCtrl>"
  (cl:format cl:nil "bool initialize~%float32 position~%float32 force~%float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperCtrl)))
  "Returns full string definition for message of type 'GripperCtrl"
  (cl:format cl:nil "bool initialize~%float32 position~%float32 force~%float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperCtrl>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperCtrl
    (cl:cons ':initialize (initialize msg))
    (cl:cons ':position (position msg))
    (cl:cons ':force (force msg))
    (cl:cons ':speed (speed msg))
))
