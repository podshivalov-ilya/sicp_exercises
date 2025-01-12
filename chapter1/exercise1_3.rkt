#lang racket

(define (two_max_square_sum a b c)
    (cond
        ((and (>= a c) (>= b c)) (+ (* a a) (* b b)))
        ((and (>= a b) (>= c b)) (+ (* a a) (* c c)))
        ((and (>= b a) (>= c a)) (+ (* b b) (* c c)))
    )
)

(two_max_square_sum 3 3 3)
