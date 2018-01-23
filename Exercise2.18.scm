;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.18

(define (member? a ls)
  (cond
    ((null? ls) #f)
    ((equal? a (car ls))
     #t)
    (else
     (member? a (cdr ls)))))

(define (remove-last a ls)
  (cond
    ((null? ls) '())
    ((and (equal? (car ls) a)
          (not (member? a (cdr ls))))
     (remove-1st a ls))
    (else
     (cons (car ls)
           (remove-last a (cdr ls))))))

(define (remove-1st a ls)
  (cond
    ((null? ls) '())
    ((equal? (car ls) a)
     (cdr ls))
    (else
     (cons (car ls)
           (remove-1st a (cdr ls))))))