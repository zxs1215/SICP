#lang planet neil/sicp
(define (same-parity . y)
  (get-same (remainder (car y) 2)
            y))
(define (get-same rmd l)
  (if (null? l)
     nil
     (if (= (remainder (car l) 2) rmd)
         (cons (car l)
               (get-same rmd (cdr l)))
         (get-same rmd (cdr l)))))