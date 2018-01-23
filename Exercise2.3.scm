#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.3

(define firsts-of-both
  (lambda (list1 list2)
    (make-list-of-two (car list1) (car list2))))

(define (make-list-of-two e1 e2)
  (cons e1 (cons e2 '())))

(firsts-of-both '(1 3 5 7) '(2 4 6))

(firsts-of-both '((a b) (c d)) '((e f) (g h)))