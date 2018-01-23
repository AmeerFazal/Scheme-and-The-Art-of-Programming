;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.3

(define pairwise-sum
  (lambda (ntpl-1 ntpl-2)
    (cond
      ((null? ntpl-1) '())
      ((cons (+ (car ntpl-1) (car ntpl-2))
             (pairwise-sum (cdr ntpl-1) (cdr ntpl-2)))))))

(define pairwise-product
  (lambda (ntpl-1 ntpl-2)
    (cond
      ((null? ntpl-1) '())
      ((cons (* (car ntpl-1) (car ntpl-2))
             (pairwise-product (cdr ntpl-1) (cdr ntpl-2)))))))

(define sum
  (lambda (ls)
    (cond
      ((null? ls) 0)
      (else
       (+ (car ls)
          (sum (cdr ls)))))))

(define dot-product
  (lambda (ntpl-1 ntpl-2)
    (sum (pairwise-product ntpl-1 ntpl-2))))

(dot-product '(3 4 -1) '(1 -2 -3))
(dot-product '(0.003 0.035) '(8 2))
(dot-product '(5.3e4) '(2.0e-3))
(dot-product '() '())

(define dot-product-2
  (lambda (ntpl-1 ntpl-2)
    (cond
      ((null? ntpl-1) 0)
      (else
       (+ (* (car ntpl-1) (car ntpl-2))
          (dot-product-2 (cdr ntpl-1) (cdr ntpl-2)))))))

(dot-product-2 '(3 4 -1) '(1 -2 -3))
(dot-product-2 '(0.003 0.035) '(8 2))
(dot-product-2 '(5.3e4) '(2.0e-3))
(dot-product-2 '() '())