#lang planet neil/sicp
(define (reverse l)
  (reverse-1 l nil))

(define (reverse-1 l acc)
  (if (null? l)
      acc 
      (reverse-1 (cdr l)
                 (cons (car l) acc ))))
(reverse (list 1 4 9 16 25))