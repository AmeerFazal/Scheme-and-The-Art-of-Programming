#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.10

(define last-item
  (lambda (ls)
    (if (null? (cdr ls))
        (car ls)
        (last-item (cdr ls)))))

(define member?
  (lambda (item ls)
    (if (null? ls)
        #f
        (if (eq? (car ls) item)
            #t
            (member? item (cdr ls))))))

(define remove-1st
  (lambda (item ls)
    (if (null? ls)
        '()
        (if (eq? item (first ls))
            (cdr ls)
            (cons (first ls)
                  (remove-1st item (cdr ls))))))) 