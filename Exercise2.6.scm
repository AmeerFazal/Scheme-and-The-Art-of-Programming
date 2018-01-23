#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.6

(define a #t)
(define b #t)
(define c #t)
(define e #f)
(define f #f)

(and a (or b e))  ; #t
(or e (and (not f) a c)) ; #t
(not (or (not a) (not b))) ; #t
(and (or a f) (not (or b e))) ; #f