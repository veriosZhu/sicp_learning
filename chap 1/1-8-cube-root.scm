(define (cube x) (* x x x)) ; 定义立方
(define (square x) (* x x))
(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
(define (curt-iter guess x) (if (good-enough? guess x) guess (curt-iter (improve guess x) x))) ; 核心函数
(define (curt x) (curt-iter 1.0 x))
