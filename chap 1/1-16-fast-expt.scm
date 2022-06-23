;;; 1-16-fast-expt

(define (even? n) (= (remainder n 2) 0))
(define (fast-expt-iter b n a) 
  (cond ((= 0 n) a)
        ((even? n) (fast-expt-iter (* b b) (/ n 2) a))
        (else (* b (fast-expt-iter b (- n 1) a)))))

(define (fast-expt b n) (fast-expt-iter b n 1))  