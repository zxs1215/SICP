#lang planet neil/sicp
(define make-interval cons)
(define lower-bound car)
(define upper-bound cdr)

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))