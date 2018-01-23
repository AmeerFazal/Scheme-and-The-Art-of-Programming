;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.2

(define pairwise-sum
  (lambda (ntpl-1 ntpl-2)
    (cond
      ((null? ntpl-1) '())
      ((cons (+ (car ntpl-1) (car ntpl-2))
             (pairwise-sum (cdr ntpl-1) (cdr ntpl-2)))))))

(pairwise-sum '(1 3 2) '(4 -1 2))
(pairwise-sum '(3.2 1.5) '(6.0 -2.5))
(pairwise-sum '(7) '(11))
(pairwise-sum '() '())


(define pairwise-product
  (lambda (ntpl-1 ntpl-2)
    (cond
      ((null? ntpl-1) '())
      ((cons (* (car ntpl-1) (car ntpl-2))
             (pairwise-product (cdr ntpl-1) (cdr ntpl-2)))))))

(pairwise-product '(1 3 2) '(4 -1 2))
(pairwise-product '(3.2 1.5) '(6.0 -2.5))
(pairwise-product '(7) '(11))
(pairwise-product '() '())

