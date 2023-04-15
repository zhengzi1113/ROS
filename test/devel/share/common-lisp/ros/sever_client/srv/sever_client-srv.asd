
(cl:in-package :asdf)

(defsystem "sever_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ADDints" :depends-on ("_package_ADDints"))
    (:file "_package_ADDints" :depends-on ("_package"))
  ))