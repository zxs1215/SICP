#lang planet neil/sicp
(define (last-pair l)
  (if (null? l)
      "empty list"
      (if (null? (cdr l))
          (car l)
          (last-pair (cdr l)))))