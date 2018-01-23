#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.8

(define s-and-n-list?
  (lambda (ls)
    (and
     (pair? ls)
     (symbol? (car ls))
     (pair? (cdr ls))
     (number? (cadr ls)))))

(s-and-n-list? '(2 pair 12 dozen)) ; #f
(s-and-n-list? '(b 4 u c a j))     ; #t
(s-and-n-list? '(a ten))           ; #f
(s-and-n-list? '(a))               ; #f

