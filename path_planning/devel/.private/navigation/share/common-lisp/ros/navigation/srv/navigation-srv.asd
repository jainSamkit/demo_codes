
(cl:in-package :asdf)

(defsystem "navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GlobalSetpoint" :depends-on ("_package_GlobalSetpoint"))
    (:file "_package_GlobalSetpoint" :depends-on ("_package"))
    (:file "MissionWaypoints" :depends-on ("_package_MissionWaypoints"))
    (:file "_package_MissionWaypoints" :depends-on ("_package"))
    (:file "global_setpoint" :depends-on ("_package_global_setpoint"))
    (:file "_package_global_setpoint" :depends-on ("_package"))
  ))