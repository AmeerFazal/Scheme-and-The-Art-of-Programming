#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.6

(cons 'one (cons 'two (cons 'three (cons 'four '()))))

(cons 'one (cons (cons 'two (cons 'three (cons 'four '()))) '()))

(cons 'one (cons (cons 'two (cons 'three '())) (cons 'four '())))

(cons (cons 'one (cons 'two '())) (cons (cons 'three (cons 'four '())) '()))

(cons (cons (cons 'one '()) '()) '())