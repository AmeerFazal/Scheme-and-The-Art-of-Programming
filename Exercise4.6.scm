;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.6

(define insert-left-all
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls))
       (cons (insert-left-all new old (car ls))
             (insert-left-all new old (cdr ls))))
      ((equal? (car ls) old)
       (cons new (cons old (insert-left-all new old (cdr ls)))))
      (else
       (cons (car ls) (insert-left-all new old (cdr ls)))))))

(insert-left-all 'z 'a '(a ((b a) (( a (c))))))
(insert-left-all 'z 'a '(((a))))
(insert-left-all 'z 'a ())

