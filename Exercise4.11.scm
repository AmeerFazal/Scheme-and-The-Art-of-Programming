;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.11

(define rightmost
  (lambda (ls)
    (cond
      ((null? ls) '())
      ((and (pair? (car ls)) (null? (cdr ls)))
       (rightmost (car ls)))
      ((pair? (car ls))
       (rightmost (cdr ls)))
      ((null? (cdr ls))
       (car ls))
      (else
       (rightmost (cdr ls))))))

(rightmost '((a b) (d (c d (f (g h) i) m n) u) v))
(rightmost '((((((b (c))))))))
(rightmost '(a ()))