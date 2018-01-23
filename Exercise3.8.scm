;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.8

(define list-front
  (lambda (ls n)
    (cond
      ((> n (length ls)) "Error")
      ((null? ls) '())
      ((zero? n) '())
      ((zero? (sub1 n)) (list (car ls)))
      (else
       (cons (car ls)
             (list-front (cdr ls) (sub1 n)))))))

(list-front '(a b c d e f g h) 4)
(list-front '(a b c) 4)
(list-front '(a b c d e f g h) 0)
(list-front '() 3)