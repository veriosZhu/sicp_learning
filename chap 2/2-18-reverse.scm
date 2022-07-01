(define (reverse items)
  (define (reverse-iter remained result)
    (if (null? remained)
         result
         (reverse-iter (cdr remained) (cons (car remained) result))))
  (reverse-iter items '()))
