#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.14

(define insert-right-1st
  (lambda (new old ls)
    (cond
      [(empty? ls) '()]
      [(eq? (car ls) old)
       (cons old (cons new (cdr ls)))]
      [else
       (cons (car ls) (insert-right-1st new old (cdr ls)))])))

(insert-right-1st 'not 'does '(my dog does have fleas))

(define insert-left-1st
  (lambda (new old ls)
    (cond
      [(empty? ls) '()]
      [(eq? (car ls) old)
       (cons new ls)]
      [else
       (cons (car ls) (insert-left-1st new old (cdr ls)))])))

(insert-left-1st 'hot 'dogs '(I eat dogs))

(insert-left-1st 'fun 'games '(some fun))

(insert-left-1st 'a 'b '(a b c a b c))

(insert-left-1st 'a 'b '())
