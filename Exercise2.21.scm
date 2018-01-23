;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.21

(define (all-same ls)
  (cond
    ((null? ls) #t)
    ((null? (cdr ls)) #t)
    (else
     (and (equal? (car ls) (car (cdr ls)))
          (all-same (cdr ls))))))

(all-same '(a a a a))
(all-same '(a b a b a b))
(all-same '((a b) (a b) (a b)))
(all-same '())
(all-same '((a)))