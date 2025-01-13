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
  (define (fast-mul-iter a b result)
      (cond
        [(= b 0) result]
        [(< a b) (fast-mul-iter b a result)]
        [(odd? b) (fast-mul-iter (double a) (quotient (- b 1) 2) (+ result a))]
        [else (fast-mul-iter (double a) (quotient b 2) result)]
        )
      )
  (fast-mul-iter a b 0)
  )

(fast-mul 10 5)
(fast-mul 13 12)
