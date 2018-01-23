;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.9

(define (wrapa item n)
  (cond
    ((zero? n) item)
    ((zero? (sub1 n)) (list item))
    (else
      (cons (wrapa item (sub1 n)) '()))))

(wrapa 'gift 1)
(wrapa 'sandwich 2)
(wrapa 'prisoner 5)
(wrapa 'moon 0)