#lang racket

(define (cbrt-iter guess x prev_guess)
  (if (good-enough? guess prev_guess)
    guess
    (cbrt-iter (improve guess x)
               x
               guess
               )))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess prev_guess)
  (< (abs (- guess prev_guess)) (* 0.001 guess)))

(define (cbrt x)
  (cbrt-iter 1.0 x 0.0))

(define (square x)
  (* x x))

(cbrt 27)
(cbrt (+ 100 37))
(cbrt (+ (cbrt 2) (cbrt 3)))
(cbrt 1000)
(cbrt 0.0000000009)
