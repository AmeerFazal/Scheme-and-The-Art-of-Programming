;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.20

(define (list-of-symbols? ls)
  (cond
    ((null? ls) #t)
    ((symbol? (car ls))
     (list-of-symbols? (cdr ls)))
    (else
     #f)))

(list-of-symbols? '(one two three four five))
(list-of-symbols? '(cat dog (hen pig) cow))
(list-of-symbols? '(a b 3 4 d))
(list-of-symbols? '())


(define (list-of-symbols2? ls)
  (if (null? ls) #t
      (if (symbol? (car ls)) (list-of-symbols2? (cdr ls)) #f)))

(list-of-symbols2? '(one two three four five))
(list-of-symbols2? '(cat dog (hen pig) cow))
(list-of-symbols2? '(a b 3 4 d))
(list-of-symbols2? '())


(define (list-of-symbols3? ls)
  (or (null? ls)
      (and (symbol? (car ls)) (list-of-symbols3? (cdr ls)))))

(list-of-symbols3? '(one two three four five))
(list-of-symbols3? '(cat dog (hen pig) cow))
(list-of-symbols3? '(a b 3 4 d))
(list-of-symbols3? '())