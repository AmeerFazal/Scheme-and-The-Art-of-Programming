;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.5

(define count-all
  (lambda (ls)
    (cond
      ((null? ls) 0)
      ((pair? (car ls)) (+ (count-all (car ls))
                           (count-all (cdr ls))))
      (else
       (add1 (count-all (cdr ls)))))))

(count-all '((a b) c () ((d (e)))))
(count-all '(() () ()))
(count-all '((())))
(count-all '())

(define remove-all
  (lambda (a ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls)) (cons (remove-all a (car ls))
                              (remove-all a (cdr ls))))
      ((equal? (car ls) a)
       (remove-all a (cdr ls)))
      (else
       (cons (car ls) (remove-all a (cdr ls)))))))

(remove-all 'a '((a b (c a)) (b (a c) a)))

(define reverse-all
  (lambda (ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls))
       (append  (reverse-all (cdr ls))
                (cons (reverse-all (car ls)) '())))
      (else
       (append (reverse-all (cdr ls))
               (cons (car ls) '()))))))

(reverse-all '(a (b c) (d (e f))))

(define subst-all
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls)) (cons (subst-all new old (car ls))
                              (subst-all new old (cdr ls))))
      ((equal? (car ls) old)
       (cons new (subst-all new old (cdr ls))))
      (else
       (cons (car ls) (subst-all new old (cdr ls)))))))

(subst-all 'z 'a '(a (b (a c)) (a (d a))))
(subst-all 0 '(1) '(((1) (0))))
(subst-all 'one 'two '())


(define substq-all
  (lambda (new old ls)
    (cond
      ((null? ls) '())
      ((pair? (car ls)) (cons (substq-all new old (car ls))
                              (substq-all new old (cdr ls))))
      ((eq? (car ls) old)
       (cons new (substq-all new old (cdr ls))))
      (else
       (cons (car ls) (substq-all new old (cdr ls)))))))

(substq-all 'z 'a '(a (b (a c)) (a (d a))))
(substq-all 'one 'two '())
