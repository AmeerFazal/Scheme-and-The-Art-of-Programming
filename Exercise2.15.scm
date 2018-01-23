;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.15

(define list-of-first-items
  (lambda (ls)
    (cond
      ((null? ls) '())
      (else
       (cons (car (car ls))
             (list-of-first-items (cdr ls)))))))

(list-of-first-items '((a) (b c d) (e f)))
(list-of-first-items '((1 2 3) ( 4 5 6)))
(list-of-first-items '((one)))
(list-of-first-items '())

