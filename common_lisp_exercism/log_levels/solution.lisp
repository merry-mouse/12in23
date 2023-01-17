(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
  (subseq log-string 8))

(defun log-severity (log-string)
  (let((log-string-level(subseq log-string 1 5)))
      (cond
        ((string-equal log-string-level "info"):everything-ok)
        ((string-equal log-string-level "warn"):getting-worried)
        ((string-equal log-string-level "ohno"):run-for-cover))))

(defun log-format (log-string)
  (let((severity(log-severity log-string))
       (message(log-message log-string)))
      (case severity
        (:everything-ok (string-downcase message))
        (:getting-worried(string-capitalize message))
        (:run-for-cover(string-upcase message)))))