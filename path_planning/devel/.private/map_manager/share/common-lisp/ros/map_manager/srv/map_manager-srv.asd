
(cl:in-package :asdf)

(defsystem "map_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :map_manager-msg
)
  :components ((:file "_package")
    (:file "GetMapInfoByName" :depends-on ("_package_GetMapInfoByName"))
    (:file "_package_GetMapInfoByName" :depends-on ("_package"))
    (:file "GetMapList" :depends-on ("_package_GetMapList"))
    (:file "_package_GetMapList" :depends-on ("_package"))
    (:file "GetObstacles" :depends-on ("_package_GetObstacles"))
    (:file "_package_GetObstacles" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SaveObstacles" :depends-on ("_package_SaveObstacles"))
    (:file "_package_SaveObstacles" :depends-on ("_package"))
    (:file "StartMission" :depends-on ("_package_StartMission"))
    (:file "_package_StartMission" :depends-on ("_package"))
  ))