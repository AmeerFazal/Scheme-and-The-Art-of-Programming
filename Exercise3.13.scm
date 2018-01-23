;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.13

(define make-list
  (lambda (n)
    (cond
      ((zero? n) '())
      (else
       (cons n (make-list (sub1 n)))))))

(define thousand (make-list 1000))

(define =list-ref=
  (lambda (ls n)
    (cond
      ((<= (length ls) n)
       (error "Error"))
      ((zero? n) (car ls))
      (else
       (=list-ref= (cdr ls) (sub1 n))))))
(=list-ref= thousand 4)

(define =list-ref=2
  (lambda (ls n)
    (cond
      ((<= (length ls) n)
       "Error")
      (else
       (list-ref-helper ls n)))))

(define list-ref-helper
  (lambda (ls n)
    (if (zero? n)
        (car ls)
        (list-ref-helper (cdr ls) (sub1 n)))))

(=list-ref=2 thousand 4)

(define =list-ref=3
  (lambda (ls n)
    (cond
      ((null? ls) "Error")
      ((zero? n) (car ls))
      (else
       (=list-ref=3 (cdr ls) (sub1 n))))))

(=list-ref=3 thousand 4)