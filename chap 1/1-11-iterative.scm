(define (fi-iter a b c count)
  (if (= count 0)
      c
      (fi-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(define (fi n)
  (fi-iter 2 1 0 n))