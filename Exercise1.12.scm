#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.12


(cdr '((a (b c) d)))
;; ()

(car (cdr (cdr '(a (b c) (d e)))))
;; (d e)

(car (cdr '((1 2) (3 4) (5 6))))
;; (3 4)

(cdr (car '((1 2) (3 4) (5 6))))
;; (2)

(car (cdr (car '((cat dog hen)))))
;; dog

(cadr '(a b c d))
;; b

(cadar '((a b) (c d) (e f)))
;; b

