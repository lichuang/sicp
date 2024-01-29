#lang sicp
#|
Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns 
  the sum of the squares of the two larger numbers. 
|#

(define (max a b)
  (cond ((> a b) a)
        (else b)
))

(define (square a) 
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b))
)

(define (two-larger-of-thress-numbers a b c)
  (cond ((> a b) (sum-of-squares a (max b c)))
        (else (sum-of-squares b (max a c)))
))

(two-larger-of-thress-numbers 1 2 3)