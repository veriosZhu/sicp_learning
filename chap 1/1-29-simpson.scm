(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (p k)
    (cond ((or (= 0 k) (= n k)) 1)
        ((even? k) 2)
        (else 4)))
  (define (g k)
    (* (p k) (f (+ a (* h k)))))
  (define (inc x) (+ x 1))
  (* (sum g 0 inc n)
     (/ h 3)))