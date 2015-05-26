(define (square a) (* a a))

(define (average a b) (/ (+ a b) 2))

(define (new-good-enough? previous current)
  (< (/ (abs (- previous current)) current) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter previous current x)
  (if (new-good-enough? previous current)
          current 
          (sqrt-iter current (improve current x) x)))

;;; tests
(define root1 (sqrt-iter 0 1.0 1e-9))
(display (square root1))

(define root2 (sqrt-iter 0 1.0 1024102410241024102410241024))
(display (square root2))

