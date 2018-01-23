;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.3

(define subst
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((equal? old (car ls))
       (cons new (subst new old (cdr ls))))
      (else
       (cons (car ls) (subst new old (cdr ls)))))))

(subst 'z 'a '(a b a c a))
(subst 0 1 '(0 1 0 1))
(subst 'dog 'cat '(my dog is fun))
(subst 'two 'one '())