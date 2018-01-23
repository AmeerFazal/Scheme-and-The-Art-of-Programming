;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.4

(define deepen-1
  (lambda (ls)
    (cond
      ((null? ls) '())
      (else
       (cons (cons (car ls) '())
            (deepen-1 (cdr ls)))))))

(deepen-1 '(a b c d))
(deepen-1 '((a b) (c (d e)) f))
(deepen-1 '())