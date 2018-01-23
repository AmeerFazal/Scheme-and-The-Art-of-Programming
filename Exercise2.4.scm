#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.4

(define (juggle l)
  (cons (third l)
        (cons (first l)
              (cons (second l) '()))))

(juggle '(jump quick spot))

(juggle '(dog bites man))