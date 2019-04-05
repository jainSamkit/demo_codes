
(cl:in-package :asdf)

(defsystem "map_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Float1DArray" :depends-on ("_package_Float1DArray"))
    (:file "_package_Float1DArray" :depends-on ("_package"))
    (:file "Float2DArray" :depends-on ("_package_Float2DArray"))
    (:file "_package_Float2DArray" :depends-on ("_package"))
  ))