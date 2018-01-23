#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 1.14

(symbol? (car '(cat mouse))) ; #t

(symbol? (cdr '((cat mouse)))) ; #f

(symbol? (cdr '(cat mouse))) ; #f

(pair? (cons 'hound 'dog)) ; #t

(pair? (car '(cheshire cat))) ; #f

(pair? (cons '() '())) ; #t
