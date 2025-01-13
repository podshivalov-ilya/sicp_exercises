#lang racket

(define (mul a b)
  (if (= b 0) 0
    (+ a (mul a (- b 1))))
  )

(define (odd? n)
  (= (remainder n 2) 1))

(define (double a)
  (+ a a))

(define (fast-mul a b)
  (cond
    [(= b 0) 0]
    [(odd? b) (+ a (fast-mul (double a) (quotient (- b 1) 2)))]
    [else (fast-mul (double a) (quotient b 2))]
    )
  )

(fast-mul 10 5)
(fast-mul 13 12)
