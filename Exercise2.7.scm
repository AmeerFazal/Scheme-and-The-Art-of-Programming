#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.7

(define expr #f)

(or (symbol? expr) (not (symbol? expr))) ; #t 
(and (null? expr) (not (null? expr)))    ; #f
(not (and (or expr #f) (not expr)))      ; #t
(not (or expr #t))                       ; #f