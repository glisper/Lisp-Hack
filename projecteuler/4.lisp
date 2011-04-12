#!/opt/local/bin/sbcl --script
;; http://projecteuler.net/index.php?section=problems&id=4

; Defined in spoj/addrev.lisp
(defun rev-integer (x)
  (parse-integer (reverse (write-to-string x))))

(defun palindrome-p (x)
  (= x (rev-integer x)))

(let ((m 0))
  (dotimes (x 1001)
    (dotimes (y 1001)
      (let ((z (* x y)))
        (if (and (palindrome-p z)
                 (> z m))
            (setf m z)))))
  (format t "~a~%" m))


