;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.1

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define sum
  (lambda (n-tuple)
    (cond
      ((null? n-tuple) 0)
      (else
       (+ (car n-tuple)
          (sum (cdr n-tuple)))))))

(sum '(1 2 3 4 5))
(sum '(6))
(sum '())