
(cl:in-package :asdf)

(defsystem "robbie_stability-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gazebo_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Contact" :depends-on ("_package_Contact"))
    (:file "_package_Contact" :depends-on ("_package"))
    (:file "LinkStatesStamped" :depends-on ("_package_LinkStatesStamped"))
    (:file "_package_LinkStatesStamped" :depends-on ("_package"))
    (:file "ContactLinkStates" :depends-on ("_package_ContactLinkStates"))
    (:file "_package_ContactLinkStates" :depends-on ("_package"))
  ))