;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.1

(define my-append
  (lambda (ls1 ls2)
    (cond
      ((null? ls1) ls2)
      (else
       (cons (car ls1)
             (my-append (cdr ls1) ls2))))))

(define my-reverse
  (lambda (ls)
    (cond
      ((null? ls) '())
      (else
       (append (my-reverse (cdr ls))
               (list (car ls)))))))


(define my-even?
  (lambda (n)
    (cond
      ((zero? n) #t)
      (else
       (my-odd? (sub1 n))))))

(define my-odd?
  (lambda (n)
    (cond
      ((zero? n) #f)
      (else
      (my-even? (sub1 n))))))

(define my-remove
  (lambda (item ls)
    (cond
      ((null? ls) '())
      ((equal? (car ls) item)
       (my-remove item (cdr ls)))
      (else
       (cons (car ls)
             (my-remove item (cdr ls)))))))

(define insert-left
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((equal? old (car ls))
       (cons new (cons old (insert-left new old (cdr ls)))))
      (else
       (cons (car ls) (insert-left new old (cdr ls)))))))

(insert-left 'z 'a '(a b a c a))
(insert-left 0 1 '(0 1 0 1))
(insert-left 'dog 'cat '(my dog is fun))
(insert-left 'two 'one '())