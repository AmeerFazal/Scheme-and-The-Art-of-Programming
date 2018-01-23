;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.25

(define writeln
  (lambda args
    (for-each display args)
    (newline)))

(define remove-1st-trace
  (lambda (item ls)
    (cond
      ((entering (null? ls) ls 1)
       (leaving '() 1))
      ((entering (equal? (car ls) item) ls 2)
       (leaving (cdr ls) 2))
      ((entering 'else ls 3)
       (leaving
        (cons (car ls) (remove-1st-trace item (cdr ls)))
        3)))))

(define entering
  (lambda (test input cond-clause-number)
    (begin
      (if test (writeln "   Entering cond-clause-"
                        cond-clause-number" with ls = " input))
      test)))

(define leaving
  (lambda (result cond-clause-number)
    (begin
      (writeln "Leaving cond-clause-"
               cond-clause-number " with result = " result)
      result)))

(remove-1st-trace 'c '(a b c d))  ; first trace

(remove-1st-trace 'e '(a b c d))  ; second trace


(define swapper
  (lambda (x y ls)
    (cond
      ((null? ls) '())
      (else
       (cons (swap-tester x y (car ls))
             (swapper x y (cdr ls)))))))

(define swap-tester
  (lambda (x y e)
    (cond
      ((equal? e x)
       y)
      ((equal? e y)
       x)
      (else
       e))))


(define swapper-trace
  (lambda (x y ls)
    (cond
      ((entering (null? ls) ls 1)
       (leaving '() 1))
      ((entering 'else ls 3)
       (leaving (cons (swap-tester x y (car ls))
                      (swapper x y (cdr ls))) 2)))))