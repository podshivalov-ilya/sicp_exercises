#lang racket

(define (sqrt-iter guess x prev_guess)
  (if (good-enough? guess prev_guess)
    guess
    (sqrt-iter (improve guess x)
               x
               guess
               )))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))
; (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev_guess)
  (< (abs (- guess prev_guess)) (* 0.000000001 guess)))

(define (sqrt x)
  (define init_val 1.0)
  (sqrt-iter (improve init_val x) x init_val))

(define (square x)
  (* x x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 25) (sqrt 16)))
(square (sqrt 1000))
(sqrt 0.0000000009)
