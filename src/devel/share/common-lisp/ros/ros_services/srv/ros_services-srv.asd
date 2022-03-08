
(cl:in-package :asdf)

(defsystem "ros_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConcentrationValue" :depends-on ("_package_ConcentrationValue"))
    (:file "_package_ConcentrationValue" :depends-on ("_package"))
    (:file "ImuValue" :depends-on ("_package_ImuValue"))
    (:file "_package_ImuValue" :depends-on ("_package"))
    (:file "PressureValue" :depends-on ("_package_PressureValue"))
    (:file "_package_PressureValue" :depends-on ("_package"))
    (:file "SonarValue" :depends-on ("_package_SonarValue"))
    (:file "_package_SonarValue" :depends-on ("_package"))
  ))