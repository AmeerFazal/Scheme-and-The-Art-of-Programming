;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.16

(define replace
  (lambda (new ls)
    (cond
      ((null? ls) '())
      ((cons new
             (replace new (cdr ls)))))))

(replace 'no '(will you do me a favour? ))
(replace 'yes '(do you like ice cream?))
(replace 'why '(not))
(replace 'maybe '())