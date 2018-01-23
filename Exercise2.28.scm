;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.28

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


(define tracing
  (lambda (message result)
    (begin
      (writeln message result)
      result)))

(define test-tracing
  (lambda (test message input)
    (begin
      (if test (tracing message input))
      test)))

(define remove-1st-trace-2
  (lambda (item ls)
    (cond
      ((test-tracing (null? ls) "Entering cond-clause-1 with ls = " ls)
       (tracing "Leaving cond-clause-1 with result = " ls))
      ((test-tracing (equal? (car ls) item) "Entering cond-clause-2 with ls = " ls)
       (tracing "Leaving cond-clause-2 with result = " ls))
      ((test-tracing 'else "Entering cond-clause-3 with ls = " ls)
       (tracing
        "Leaving cond-clause-3 with result = " (cons (car ls) (remove-1st-trace item (cdr ls)))
        )))))
(remove-1st-trace 'c '(a b c d))
(remove-1st-trace-2 'c '(a b c d))

(remove-1st-trace 'e '(a b c d))
(remove-1st-trace-2 'e '(a b c d))  
