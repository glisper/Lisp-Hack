#!/opt/local/bin/sbcl --script
;; https://www.spoj.pl/problems/ADDREV/

(defun rev-integer (x)
  (parse-integer (reverse (write-to-string x))))

(dotimes (i (parse-integer (read-line)))
  (let ((x (rev-integer (read)))
        (y (rev-integer (read))))
    (format t "~a~%" (rev-integer (+ x y)))))

