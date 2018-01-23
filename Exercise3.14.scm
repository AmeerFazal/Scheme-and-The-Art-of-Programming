;; Scheme and The Art of Programming
;; George Springer and Daniel P. Friedman

;; Solutions By: Ameer Fazal
;; youtube.com/ameerfazal

;; Exercise 3.14

(define writeln
  (lambda args
    (for-each display args)
    (newline)))


(define make-ratl
  (lambda (numr denr)
    (if (zero? denr)
        "Error"
        (cons numr denr))))

(define numr
  (lambda (ratl)
    (car ratl)))

(define denr
  (lambda (ratl)
    (cdr ratl)))

(define rzero?
  (lambda (rtl)
    (zero? (numr rtl))))

(define r+
  (lambda (x y)
    (make-ratl (+ (* (numr x) (denr y)) (* (numr y) (denr x)))
               (* (denr x) (denr y)))))

(define r*
  (lambda (x y)
    (make-ratl (* (numr x) (numr y))
               (* (denr x) (denr y)))))

(define r-
  (lambda (x y)
    (make-ratl (- (* (numr x) (denr y)) (* (numr y) (denr x)))
               (* (denr x) (denr y)))))

(define rinvert
  (lambda (x)
    (if (rzero? x)
        (error "rinvert: cannot invert " x)
        (make-ratl (denr x) (numr x)))))

(define r/
  (lambda (x y)
    (r* x (rinvert y))))

(define r=
  (lambda (x y)
    (= (* (numr x) (denr y)) (* (numr y) (denr x)))))

(define rpositive
  (lambda (rtl)
    (or (and (positive? (numr rtl)) (positive? (denr rtl)))
        (and (negative? (numr rtl)) (negative? (denr rtl))))))

(define r>
  (lambda (x y)
    (rpositive? (r- x y))))

(define r<
  (lambda (x y)
    (rpositive (r- y x))))

(define rmax
  (lambda (x y)
    (if (r> x y)
        x
        y)))

(define extreme-value
  (lambda (x y)
    (if (pred x y)
        x
        y)))

(define rprint
  (lambda (rtl)
    (writeln (numr rtl) "/" (denr rtl))))

(define rminus
  (lambda (rtl)
    (make-ratl (* -1 (numr rtl)) (denr rtl))))

