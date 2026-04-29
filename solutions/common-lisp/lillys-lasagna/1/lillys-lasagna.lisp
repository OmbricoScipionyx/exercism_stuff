(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven () "Time in oven" 337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (minutes) "Minutes remaining until cooked" (- (expected-time-in-oven) minutes))

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers) "Preparation time in min" (* layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers minutes) "Minutes spent working" (+ (preparation-time-in-minutes layers) minutes))
