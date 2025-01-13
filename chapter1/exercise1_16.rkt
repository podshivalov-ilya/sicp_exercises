#lang racket

(define (fast-expt b n)
  (cond ((= n 0) 1)
    ((even? n) (square (fast-expt b (/ n 2))))
    (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(define (fast-expt2 b n)
    (define (iter k a bb)
      (cond
        ((= k 0) a)
        ((even? k) (iter (/ k 2) a (* bb bb)))
        (else (iter (- k 1) (* a bb) bb))
        ))
    (iter n 1 b)
  )

(fast-expt 5 6)
(fast-expt 3 3)
(fast-expt2 5 6)
(fast-expt2 3 3)
