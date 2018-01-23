;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.7

(define count-background
  (lambda (item ls)
    (cond
      ((null? ls) 0)
      ((not (equal? (car ls) item))
       (add1 (count-background item (cdr ls))))
      (else
       (count-background item (cdr ls))))))

(count-background 'blue '(red white blue yellow blue red))
(count-background 'red '(white blue green))
(count-background 'white '())