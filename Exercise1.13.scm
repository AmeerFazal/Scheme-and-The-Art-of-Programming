#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.13

(car (cdr (cdr '(b c a d))))

(car (cdr (car '((b a) (c d)))))

(car (car (cdr '((d c) (a) b))))

(car (car (car '(((a))))))
