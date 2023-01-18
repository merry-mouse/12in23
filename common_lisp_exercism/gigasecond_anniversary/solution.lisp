(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
(multiple-value-bind
(second minute hour date month year day daylight-p zone)
(decode-universal-time (+ )(encode-universal-time second minute hour day month year 0)
1000000000)0)
(list year month date hour minute second)))