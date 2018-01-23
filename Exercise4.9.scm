;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.9

(define count-background-all
  (lambda (item ls)
    (cond
      ((null? ls) 0)
      ((pair? (car ls))
       (+ (count-background-all item (car ls))
          (count-background-all item (cdr ls))))
      
      ((not (equal? (car ls) item))
       (+ 1 (count-background-all item (cdr ls))))
      (else
       (count-background-all item (cdr ls))))))

(count-background-all 'a '((((b (((a)) c))))))
(count-background-all 'a '((a) b (c a) d))
(count-background-all 'b '())