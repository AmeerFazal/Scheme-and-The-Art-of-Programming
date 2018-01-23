;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.8

(define depth
  (lambda (ls)
    (cond
      ((pair? ls)
       (max (add1 (depth (car ls)))
            (depth (cdr ls))))
      (else
       0))))

(define flatten
  (lambda (ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls)) (append (flatten (car ls))
                                (flatten (cdr ls))))
      (else
       (cons (car ls) (flatten (cdr ls)))))))

(define remove-leftmost
  (lambda (item ls)
    (cond
      ((null? ls) '())
      ((equal? (car ls) item)
       (cdr ls))
      ((and (pair? (car ls)) (member-all item (car ls)))
       (cons (remove-leftmost item (car ls)) (cdr ls)))
      
      (else
       (cons (car ls)
             (remove-leftmost item (cdr ls)))))))

(define member-all
  (lambda (item ls)
    (cond
      ((null? ls) #f)
      ((equal? item (car ls)) #t)
      ((pair? (car ls))
       (or (member-all item (car ls))
           (member-all item (cdr ls))))
      ((equal? item (car ls)) #t)
      (else
       (member-all item (cdr ls))))))

(define count-parens-all
  (lambda (ls)
    (cond
      ((null? ls) 2)
      ((pair? (car ls)) (+ (count-parens-all (car ls))
                           (count-parens-all (cdr ls))))
      ((null? (car ls)) (+ 2 (count-parens-all (cdr ls))))
      (else
       (count-parens-all (cdr ls))))))
(count-parens-all '())
(count-parens-all '((a b) c))
(count-parens-all '(((a () b) c) () ((d) e)))
