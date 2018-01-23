;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.7

(define sum-all
  (lambda (ls)
    (cond
      ((null? ls) 0)
      ((pair? (car ls))
       (+ (sum-all (car ls))
          (sum-all (cdr ls))))
      (else
       (+ (car ls) (sum-all (cdr ls)))))))

(sum-all '((1 3) (5 7) (9 11)))
(sum-all '(1 (3 (5 (7 (9))))))
(sum-all '())