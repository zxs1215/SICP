#lang planet neil/sicp
(define with-draw 
  (let ((balance 100)) 
    (lambda (amount) 
      (if (<= amount balance) 
          (begin (set! balance (- balance amount)) 
                 balance)
          "Insufficient funds"))))
(with-draw 25)
(with-draw 25)
(with-draw 60)
(with-draw 15)