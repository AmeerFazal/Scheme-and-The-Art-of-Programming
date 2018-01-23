;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 4.14

(define harmonic-sum-it
  (lambda (n acc)
    (cond
      ((zero? (sub1 n)) acc)
      (else
       (harmonic-sum-it (sub1 n) (+ acc (/ 1 n)))))))

(define harmonic-sum
  (lambda (n)
    (harmonic-sum-it n 1)))

(harmonic-sum 1)
(harmonic-sum 2)
(harmonic-sum 3)
(harmonic-sum 5)
(harmonic-sum 10)
(harmonic-sum 100)
(harmonic-sum 1000)
(harmonic-sum 10000)

(define harmonic-sum-minus-1
  (lambda (n)
    (- (harmonic-sum n) 1)))

(define harmonic-sum-without-the-nth
  (lambda (n)
    (- (harmonic-sum n) (/ 1 n))))

(define verify
  (lambda (n)
    (and (<= (harmonic-sum-minus-1 n)
             (log n))
         (<= (log n)
             (harmonic-sum-without-the-nth n)))))

(verify 10)
(verify 100)
(verify 1000)
(verify 10000)