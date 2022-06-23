(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))
(define (good-enough? guess last ) (< (/ (abs (- guess last)) last) 0.00001))  ;判断预测值是否收敛
(define (sqrt-iter guess last x) (if (good-enough? guess last) guess (sqrt-iter (improve guess x) guess x))) ; 核心函数
(define (sqrt x) (sqrt-iter 1.0 x x))