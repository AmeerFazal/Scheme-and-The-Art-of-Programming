;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.22

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


;; An invokation of remove-1st-trace that enters only the first and second cond clauses
;; is not possible since it requires a recursive call for a non empty list to reduce to an empty list
