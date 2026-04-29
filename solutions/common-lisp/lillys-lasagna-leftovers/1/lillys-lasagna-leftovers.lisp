(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers) (* 19 (length layers)))

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (oven-time :normal)) (cond ((equal oven-time :normal) 337)
                                                                       ((equal oven-time :shorter) 237)
                                                                       ((equal oven-time :very-short) 137)
                                                                       ((equal oven-time :longer) 437)
                                                                       ((equal oven-time :very-long) 537)
                                                                       ((equal oven-time nil) 0)
                                                                   ))

;; Define function split-leftovers
(defun split-leftovers (&key (weight nil weight-supplied-p) (human 10) (alien 10)) (cond ((not weight-supplied-p) :just-split-it)
      ((null weight) :looks-like-someone-was-hungry)
      (t (- weight(+ human alien))))) ;; didn't like this at all