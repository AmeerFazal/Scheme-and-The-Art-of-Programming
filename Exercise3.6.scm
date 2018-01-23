;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.6

(define all-same?
  (lambda (ls)
    (cond
      ((null? ls) #t)
      ((null? (cdr ls)) #t)
      ((not (equal? (car ls) (cadr ls))) #f)
      (else
       (all-same? (cdr ls))))))
      

(define make-list
  (lambda (n item)
    (cond
      ((zero? n) '())
      (else
       (cons item (make-list (sub1 n) item))))))



(make-list 5 'no)
(make-list 1 'maybe)
(make-list 0  'yes)
(length (make-list 7 'any))
(all-same? (make-list 100 'any))

