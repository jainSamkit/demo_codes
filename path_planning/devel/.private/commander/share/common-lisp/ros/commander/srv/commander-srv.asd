
(cl:in-package :asdf)

(defsystem "commander-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CANCEL_OBS_CAPTURE" :depends-on ("_package_CANCEL_OBS_CAPTURE"))
    (:file "_package_CANCEL_OBS_CAPTURE" :depends-on ("_package"))
    (:file "DELETE_OBS_CAPTURE" :depends-on ("_package_DELETE_OBS_CAPTURE"))
    (:file "_package_DELETE_OBS_CAPTURE" :depends-on ("_package"))
    (:file "GET_MAP_INFO" :depends-on ("_package_GET_MAP_INFO"))
    (:file "_package_GET_MAP_INFO" :depends-on ("_package"))
    (:file "SAVE_OBS_DATA" :depends-on ("_package_SAVE_OBS_DATA"))
    (:file "_package_SAVE_OBS_DATA" :depends-on ("_package"))
    (:file "START_OBS_CAPTURE" :depends-on ("_package_START_OBS_CAPTURE"))
    (:file "_package_START_OBS_CAPTURE" :depends-on ("_package"))
    (:file "STOP_OBS_CAPTURE" :depends-on ("_package_STOP_OBS_CAPTURE"))
    (:file "_package_STOP_OBS_CAPTURE" :depends-on ("_package"))
  ))