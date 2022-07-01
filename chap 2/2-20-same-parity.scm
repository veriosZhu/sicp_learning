(define (same-parity a . l)
  (define (iter comp result remain)
    (cond ((null? remain) result)
          ((comp (car remain)) (iter comp (cons (car remain) result) (cdr remain)))
          (else (iter comp result (cdr remain)))
        ))
  (if (null? l)
            (list a)
            (iter (if (even? a) even? odd?) '() (cons a l))))

; 答案
; (define (same-parity sample . others)
;     (filter (if (even? sample)
;                 even?
;                 odd?)
;             (cons sample others)))      ; 别忘了 sample 也要包含在列表内