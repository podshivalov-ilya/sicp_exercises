#lang racket

(define (count-change amount)
  (define coins '(1 5 10 25 50))
  (cc-iter amount coins 0))

(define (cc-iter amount coins ways)
  (cond
    ((= amount 0) (+ ways 1))
    ((or (< amount 0) (null? coins)) ways)
    (else
      (cc-iter amount
               (cdr coins)
               (cc-iter (- amount (car coins))
                        coins
                        ways)))))

(count-change 2000)
