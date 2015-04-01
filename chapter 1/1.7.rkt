#lang planet neil/sicp
(define (sqrt x)
  
  (define (sqrt-iter x guess)
    (if (good-enough (next-guess x guess) guess) 
        guess
        (sqrt-iter x (next-guess x guess))))
  
  (define (good-enough x guess)
    (< (abs (- guess x)) 0.0000000000001))
  
  (define (next-guess x guess)
    (/ (+ (/ x guess) guess) 2))
  
  (sqrt-iter x 1.0))


(sqrt 25)