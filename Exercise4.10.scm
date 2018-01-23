;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.10

(define leftmost
  (lambda (ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls))
       (leftmost (car ls)))
      (else
       (car ls)))))

(leftmost '((a b) (c (d e))))
(leftmost '((((c ((e f) g) h)))))
(leftmost '(() a))