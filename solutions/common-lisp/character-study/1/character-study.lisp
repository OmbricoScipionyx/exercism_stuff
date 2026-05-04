(defpackage :character-study
  (:use :cl)
  (:export
   :compare-chars
   :size-of-char
   :change-size-of-char
   :type-of-char))
(in-package :character-study)

(defun compare-chars (char1 char2)
  (
   cond ((char= char1 char2) :equal-to)
        ((char-lessp char1 char2) :less-than)
        ((char-greaterp char1 char2) :greater-than)
   ))

(defun size-of-char (char)
  (cond ((upper-case-p char) :big)
        ((lower-case-p char) :small)
        (t :no-size))
  )

(defun change-size-of-char (char wanted-size)
  (cond ((eq wanted-size :big) (char-upcase char))
        ((eq wanted-size :small) (char-downcase char)))
  )

(defun type-of-char (char)
  (cond ((alpha-char-p char) :alpha)
        ((digit-char-p char) :numeric)
        ((char-equal char #\Space) :space)
        ((char-equal char #\Newline) :newline)
        (t :unknown))
  )
