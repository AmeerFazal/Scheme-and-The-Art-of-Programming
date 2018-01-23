#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.1

(define (second l)
  (car (cdr l)))

(second '(1 2 3))
(second '(hello I am))
