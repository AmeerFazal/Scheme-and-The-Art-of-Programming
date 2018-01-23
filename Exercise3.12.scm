;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.12

(define (n-tuple->integer n-tup)
  (cond
    ((null? n-tup) "Error")
    ((null? (cdr n-tup)) (car n-tup))
    (else
     (+ (* (car n-tup) (expt 10 (sub1 (length n-tup))))
        (n-tuple->integer (cdr n-tup))))))

(n-tuple->integer '(3 1 4 6))
(n-tuple->integer '(0))
(n-tuple->integer '())
(+ (n-tuple->integer '(1 2 3))
   (n-tuple->integer '(3 2 1)))