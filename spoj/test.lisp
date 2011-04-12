#!/opt/local/bin/sbcl --script
;; https://www.spoj.pl/problems/TEST/

(do ((line (read-line)
           (read-line)))
    ((string= "42" line))
  (format t "~a~%" line))
