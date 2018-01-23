;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.17

(define remove-1st
  (lambda (a ls)
    (cond
      ((null? ls) '())
      ((equal? a (car ls))
       (cdr ls))
      (else
       (cons (car ls)
             (remove-1st a (cdr ls)))))))

(define remove-2nd
  (lambda (a ls)
    (cond
      ((null? ls) '())
      ((equal? a (car ls))
       (cons (car ls)
             (remove-1st a (cdr ls))))
      (else
       (cons (car ls)
             (remove-2nd a (cdr ls)))))))