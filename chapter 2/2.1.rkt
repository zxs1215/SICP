#lang planet neil/sicp
(define (abs x)
  (if (< x 0)
      (- 0 x)
      x))

(define (is-neg n d)
  (cond ((and (> n 0) (> d 0)) #f)
        ((and (< n 0) (< d 0)) #f)
        (else #t)))

(define (make-rat n d)
  (cons  (if (is-neg n d)
             (- 0 (abs n))
             (abs n))
         (abs d)))