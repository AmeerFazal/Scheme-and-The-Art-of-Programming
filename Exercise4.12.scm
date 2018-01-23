;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.12

(define fact
  (lambda (n)
    (cond
      ((zero? n) 1)
      (else
       (* n (fact (sub1 n)))))))

(fact 0)
(fact 1)
(fact 5)
(fact 7)
(fact 10)


(define fact-2
  (lambda (n acc)
    (cond
      ((zero? n) acc)
      (else
       (fact-2 (sub1 n) (* n acc))))))


(fact-2 0 1)
(fact-2 1 1)
(fact-2 5 1)
(fact-2 7 1)
(fact-2 10 1)

(fact 10)
(fact 20)
(fact 30)
(fact 40)
(fact 50)
(fact 100)
(fact-2 10 1)
(fact-2 20 1)
(fact-2 30 1)
(fact-2 40 1)
(fact-2 50 1)
(fact-2 100 1)
