#lang planet neil/sicp
(define (sqrt x)
   (sqrt-iter x 1.0))
  (define (sqrt-iter x guess)
    (if (good-enough (next-guess x guess) guess) 
        guess
        (sqrt-iter x (next-guess x guess))))
  (define (good-enough x guess)
    (< (abs (- guess x)) 0.0000000000001))
  (define (next-guess x y)
    (/ (+ (/ x (* y y)) (+ y y)) 3))
 
(sqrt 15625)