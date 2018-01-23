;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.11

(define (sum-of-odds n)
  (cond
    ((zero? n) 0)
    (else
     (+ (sub1 (* 2 n))
        (sum-of-odds (sub1 n))))))

(sum-of-odds 1)
(sum-of-odds 2)
(sum-of-odds 3)
(sum-of-odds 4)
(sum-of-odds 5)
(sum-of-odds 6)
(sum-of-odds 7)
(sum-of-odds 8)
(sum-of-odds 9)
(sum-of-odds 10)