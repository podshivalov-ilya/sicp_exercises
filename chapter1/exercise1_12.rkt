#lang racket

(define (pascal-triangle-recursive-element n col)
  (cond
    [(or (= col 0) (= col n)) 1]
    [else
      (+
        (pascal-triangle-recursive-element (- n 1) (- col 1))
        (pascal-triangle-recursive-element (- n 1) col)) ]))

(define (pascal-row-recursive n)
  (define (col-iter col)
    (cond
      [(> col n) (newline)]
      [else
        (display (pascal-triangle-recursive-element n col))
        (display " ")
        (col-iter (+ col 1))]))
  (col-iter 0))

(define (pascal-triangle-recursive n)
  (define (row-iter row)
    (cond
      [(> row n) (newline)]
      [else
        (pascal-row-recursive row)
        (row-iter (+ row 1))
      ])
    )
  (row-iter 0)
)

(pascal-triangle-recursive 17)
