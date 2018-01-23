;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.26

(define writeln
  (lambda args
    (for-each display args)
    (newline)))

(define member?
  (lambda (item ls)
    (cond
      ((null? ls) #f)
      ((equal? item (car ls))
       #t)
      (else
       (member? item (cdr ls))))))

(member? 'c '(a b c d))

(define last-item
  (lambda (ls)
    (cond
      ((null? ls) '())
      ((null? (cdr ls)) (car ls))
      (else
       (last-item (cdr ls))))))

(last-item '(a b c d))
(last-item '(a b c))
(last-item '(a))
(last-item '())

;; As soon as the list becomes null list both of the above procedures stops.
;; Both of the above procedures are iterative.