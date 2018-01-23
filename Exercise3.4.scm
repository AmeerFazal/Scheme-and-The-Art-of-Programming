;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.4

(define mult-by-n
  (lambda (n ntpl)
    (cond
      ((null? ntpl) '())
      (else
       (cons (* n (car ntpl))
             (mult-by-n n (cdr ntpl)))))))

(mult-by-n 3 '(1 2 3 4 5))
(mult-by-n 0 '(1 3 5 7 9 11))
(mult-by-n -7 '())