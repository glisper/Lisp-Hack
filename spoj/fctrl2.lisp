#!/opt/local/bin/sbcl --script
;; https://www.spoj.pl/problems/FCTRL2/

(defvar prod)

(defun factorial (n)
  (setf prod 1)
  (do ((i 2 (1+ i)))
      ((> i n))
    (setf prod (* prod i)))
  prod)

(dotimes (c (read))
  (format t "~a~%" (factorial (read))))

