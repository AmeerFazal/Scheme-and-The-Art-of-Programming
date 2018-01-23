;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.10

(define (multiple? m n)
  (cond
    ((and (zero? n) (zero? m)) #t)
    ((zero? n) #f)
    (else
     (zero? (remainder m n)))))

(multiple? 7 2)
(multiple? 9 3)
(multiple? 5 0)
(multiple? 0 20)
(multiple? 17 1)
(multiple? 0 0)