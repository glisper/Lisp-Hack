#!/opt/local/bin/sbcl --script
;; http://projecteuler.net/index.php?section=problems&id=3

(defun prime-p (x)
  (do ((i 2 (incf i)))
      ((> i (isqrt x)))
    (if (= 0 (mod x i))
        (return-from prime-p nil)))
  t)

(defun largest-prime-factor (x)
  (do ((y (isqrt x) (decf y)))
      ((= y 0))
      (if (and (prime-p y)
               (= 0 (mod x y)))
          (return-from largest-prime-factor y))))

(format t "~a~%" (largest-prime-factor 600851475143))
