#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.5

;; Answer :
(+ a (- (+ b c) a))  ; a + ((b + c) - a)

(+ (* a b) (* c b))  ; (a * b) + (b * c)

(/ (- a b) (- a c))  ; (a - b) / (a - c)

