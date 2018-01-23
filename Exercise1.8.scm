#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.8

'(a 'b) ; will return (a 'b) because the entire expression is quoted, so
; the elements inside are also quotes. An additional quote for b can be seen
; because we added an additional quote. 
