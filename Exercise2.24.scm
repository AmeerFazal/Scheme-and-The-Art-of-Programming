;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.24

(define writeln
  (lambda args
    (for-each display args)
    (newline)))

(define describe
  (lambda (s)
    (cond
      ((null? s) (quote '()))
      ((number? s) s)
      ((symbol? s) (list 'quote s))
      ((pair? s) (list 'cons (describe (car s)) (describe (cdr s))))
      (else s))))

(describe 347)
(describe 'hello)
(describe '(1 2 button my shoe))
(describe '(a (b c (d e) f g) h))

;; It returns the input value as it is.