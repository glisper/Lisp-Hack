#!/opt/local/bin/sbcl --script
;; http://projecteuler.net/index.php?section=problems&id=1

(defun m3or5p (x)
  (if (or (= 0 (mod x 3))
          (= 0 (mod x 5)))
      t))

(format t "~a~%"
        (loop for x from 1 to 999 when (m3or5p x) sum x))
