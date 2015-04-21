#lang planet neil/sicp
(define (make-accumulator balance)
  (lambda (plus)
    (begin (set! balance (+ plus balance)) balance)))
(define A (make-accumulator 5))
(A 10)
(A 10)