#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.11

(define member?
  (lambda (item ls)
    (cond
      [(null? ls) #f]
      [(eq? item (car ls)) #t]
      [else
       (member? item (cdr ls))])))

(define remove-1st
  (lambda (item ls)
    (cond
      [(null? ls) '()]
      [(eq? item (car ls)) (cdr ls)]
      [else
       (cons (car ls) (remove-1st item (cdr ls)))])))


;; Both are similar in structure.