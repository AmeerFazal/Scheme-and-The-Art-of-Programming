#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.5

(define (switch l)
  (cons (third l)
        (cons (second l)
              (cons (first l) '()))))

(switch '(jump quick spot))

(switch '(dog bites man))