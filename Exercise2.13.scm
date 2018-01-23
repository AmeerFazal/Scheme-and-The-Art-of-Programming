#lang scheme

;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.13

(define subst-1st
  (lambda (new old ls)
    (cond
      ((empty? ls) '())
      ((equal? (car ls) old)
       (cons new (cdr ls)))
      (else
       (cons (car ls)
             (subst-1st new old (cdr ls)))))))

(subst-1st 'dog 'cat '(my cat is clever))
(subst-1st 'b 'a '(c a b a c))
(subst-1st '(0) '(*) '((*) (1) (*) (2)))
(subst-1st 'two 'one '())


(define substq-1st
  (lambda (new old ls)
    (cond
      ((empty? ls) '())
      ((eq? (car ls) old)
       (cons new (cdr ls)))
      (else
       (cons (car ls)
             (substq-1st new old (cdr ls)))))))

(substq-1st 'dog 'cat '(my cat is clever))
(substq-1st 'b 'a '(c a b a c))
(substq-1st '(0) '(*) '((*) (1) (*) (2)))
(substq-1st 'two 'one '())


(define substv-1st
  (lambda (new old ls)
    (cond
      ((empty? ls) '())
      ((eqv? (car ls) old)
       (cons new (cdr ls)))
      (else
       (cons (car ls)
             (substv-1st new old (cdr ls)))))))

(substv-1st 'dog 'cat '(my cat is clever))
(substv-1st 'b 'a '(c a b a c))
(substv-1st '(0) '(*) '((*) (1) (*) (2)))
(substv-1st 'two 'one '())