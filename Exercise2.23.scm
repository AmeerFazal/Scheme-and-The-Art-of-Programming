;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 2.23

(define writeln
  (lambda args
    (for-each display args)
    (newline)))

;; a

(begin
  (writeln "(* 3 4) = " (* 3 4))
  (= (* 3 4) 12))

;; (* 3 4) = 12 is printed on the screen and #t is returned

;; b

(begin
  (writeln "(cons 'a '(b c)) has the value " (cons 'a '(b c)))
  (writeln "(cons 'a '(b c)) has the value " '(a b c))
  (writeln "(cons 'a '(b c)) has the value (a b c)")
  (cons 'a '(b c)))

;; (cons 'a '(b c)) has the value (a b c) 
;; (cons 'a '(b c)) has the value (a b c)
;; (cons 'a '(b c)) has the value (a b c)
;; is printed and 
;; (a b c) is returned

;; c

(begin
  (writeln "Hello, how are you?")
  (writeln "Fine, thank you. How are you? " 'jack)
  (writeln "Just great! It is good to see you again, " 'jill)
  "Good-bye. Have a nice day.")

;; Hello, how are you?
;; Fine, thank you. How are you? jack
;; Just great! It is good to see you again, jill
;; is printed and 
;; "Good-bye. Have a nice day. is returned"
