#lang racket

(define (f-recursive n)
  (cond
    ((< n 3) n)
    (else
      (+
        (f-recursive (- n 1))
        (f-recursive (- n 2))
        (f-recursive (- n 3))
        ))
    ))

; (f-recursive 50)

(define (f-iter n)
  (define (iter n-1 n-2 n-3 k)
    (if (= k n)
      n-1
      (iter (+ n-1 n-2 n-3)
              n-1
              n-2
              (+ k 1))
      )
    )
  (if (< n 3)
    n
    (iter 2 1 0 3)
    )
  )

(f-iter 100000)
