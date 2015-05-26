(define (square a) (* a a))

(define (average a b) (/ (+ a b) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) ;;; Aborting!: maximum recursion depth exceeded
          guess
          (sqrt-iter (improve guess x) x)))

;;; tests
(sqrt-iter 1.0 2.0)
(sqrt-iter 1.0 64.0)

