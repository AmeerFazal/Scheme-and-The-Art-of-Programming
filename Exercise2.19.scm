;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.19

(define (sandwich-1st a b ls)
  (cond
    ((null? (cdr ls)) (cdr ls))
    ((and (equal? (car ls) b)
          (equal? (car (cdr ls)) b))
     (cons b (cons a (cdr ls))))
    (else
      (cons (car ls)
            (sandwich-1st a b (cdr ls))))))

(sandwich-1st 'meat 'bread '(bread cheese bread bread))
