
(cl:in-package :asdf)

(defsystem "robbie_auto-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ssm" :depends-on ("_package_ssm"))
    (:file "_package_ssm" :depends-on ("_package"))
    (:file "Contact" :depends-on ("_package_Contact"))
    (:file "_package_Contact" :depends-on ("_package"))
  ))