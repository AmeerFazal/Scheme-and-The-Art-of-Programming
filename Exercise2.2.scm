#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.2

(define (third l)
  (car (cdr (cdr l))))

(third '(1 2 3))
(third '(10 20 30 40))
