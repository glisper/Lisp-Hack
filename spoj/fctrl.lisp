#!/opt/local/bin/sbcl --script
;; https://www.spoj.pl/problems/FCTRL/

(defun z (n)
  (let ((total 0))
    (do ()
        ((< n 5))
      (setf n (floor n 5))
      (incf total n))
    total))

(dotimes (i (read))
  (let ((x (read)))
    (format t "~a~%" (z x))))
