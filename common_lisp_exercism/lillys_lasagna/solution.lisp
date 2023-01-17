(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)
(defun expected-time-in-oven () "returns minutes that lasagna " '337)
(documentation 'expected-time-in-oven 'function) 

(defun remaining-minutes-in-oven (time) "returns time that lasanga has to remain in the oven" (- 337 time))
(documentation 'remaining-minutes-in-oven 'function) 

(defun preparation-time-in-minutes (layers) "returns how many minutes Lilly spent preparing the lasagna" (* layers 19))
(documentation 'preparation-time-in-minutes 'function) 

(defun elapsed-time-in-minutes (layers oven-time) "return how many minutes Lilly has worked on cooking the lasagna" (+ oven-time(preparation-time-in-minutes layers)))
(documentation 'elapsed-time-in-minutes 'function) 