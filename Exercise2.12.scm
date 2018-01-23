#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.12

(define mystery
  (lambda (ls)
    (if (null? (cddr ls))
        (cons (car ls) '())
        (cons (car ls) (mystery (cdr ls))))))

(mystery '(1 2 3 4 5))  ; all but last is returned, a better name is butlast

