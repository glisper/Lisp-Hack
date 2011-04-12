#!/opt/local/bin/sbcl --script
;; http://projecteuler.net/index.php?section=problems&id=2

(defun f ()
  (let ((total 2))
    (do ((a 1) (b 2))
        ((> b 4000000))
      (let ((temp b))
        (setf b (+ a b) a temp)
        (if (evenp b) (incf total b))))
    total))

(format t "~a~%" (f))
