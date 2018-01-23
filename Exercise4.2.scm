;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.2

(define insert-right
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((equal? (car ls) old)
       (cons old (cons new (insert-right new old (cdr ls)))))
      (else
       (cons (car ls) (insert-right new old (cdr ls)))))))

(insert-right 'z 'a '(a b a c a))
(insert-right 0 1 '(0 1 0 1))
(insert-right 'dog 'cat '(my dog is fun))
(insert-right 'one 'two '())