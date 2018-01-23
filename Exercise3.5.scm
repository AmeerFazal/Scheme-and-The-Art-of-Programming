;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.5

(define member?
  (lambda (item ls)
    (cond
      ((null? ls) #f)
      ((equal? (car ls) item) #t)
      (else
       (member? item (cdr ls))))))


(define index
  (lambda (item ls)
    (cond
      ((not (member? item ls)) -1)
      ((equal? item (car ls)) 0)
      (else
       (add1 (index item (cdr ls)))))))

(index 3 '(1 2 3 4 5 6 7))
(index 'so '(do re me fa so la ti do fa))
(index 'a '(b c d e))
(index 'cat '())