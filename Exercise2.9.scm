#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.9

(define s-or-n-list?
  (lambda (ls)
    (and (pair? ls)
         (or (symbol? (car ls))
             (number? (car ls))))))

(s-or-n-list? '(b))           ; #t
(s-or-n-list? '(c 2 m))       ; #t
(s-or-n-list? '(10 10 10 10)) ; #t
(s-or-n-list? '())            ; #f