(defpackage :collatz-conjecture
  (:use :cl)
  (:export :collatz))

(in-package :collatz-conjecture)

(defun next(n)
    (if(evenp n)
    (/ n 2)
    (+ 1 (* 3 n))))


(defun collatz (n)
    (when (plusp n)
        (loop
        :for i = n :then (next i)
        :until (= 1 i)
        :count t)))