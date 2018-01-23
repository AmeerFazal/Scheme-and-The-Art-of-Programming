#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.15

(eqv? (car '(a b)) (car (cdr '(b a)))) ; #t

(eqv? 'flea (car (cdr '(dog flea)))) ; #t

(eq? (cons 'a '(b c)) (cons 'a '(b c))) ; #f

(eqv? (cons 'a '(b c)) (cons 'a '(b c))) ; #f

(equal? (cons 'a '(b c)) (cons 'a '(b c))) ; #t

(null? (cdr (cdr '((a b c) d)))) ; #t


(null? (car '(()))) ; #t

(null? (car '((())))) ; #f

