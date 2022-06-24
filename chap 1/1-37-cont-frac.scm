(define (cont-frac n d k)
  (define (frac-iter step result)
    (if (= step 1)
        result
        (frac-iter (- step 1) (/ (n step) (+ result (d k)))))
  )
  (frac-iter k 0)
)

; (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k)