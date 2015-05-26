(define (square a) (* a a))

(define (cube a) (* a a a))

(define (new-good-enough? previous current)
  (< (/ (abs (- previous current)) current) 0.0001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root-iter previous current x)
  (if (new-good-enough? previous current)
          current 
          (cube-root-iter current (improve current x) x)))

;;; tests
(define cube-root1 (cube-root-iter 0 1.0 3))
(display cube-root1)
(display (cube cube-root1))

(define cube-root2 (cube-root-iter 0 1.0 8))
(display cube-root2)
(display (cube cube-root2))

(define cube-root3 (cube-root-iter 0 1.0 1e-50))
(display cube-root3)
(display (cube cube-root3))

(define cube-root4 (cube-root-iter 0 1.0 1e+50))
(display cube-root4)
(display (cube cube-root4))

