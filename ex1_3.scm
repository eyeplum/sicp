;;; procedure definitions
(define (square x) (* x x))
(define (square-add x y) (+ (square x) (square y)))
(define (square-add-largest a b c)
  (cond ((and (<= a b) (<= a c)) (square-add b c))
        ((and (<= b a) (<= b c)) (square-add a c))
        ((and (<= c a) (<= c b)) (square-add a b))))

;;; tests
(square-add-largest 1 2 3)
(square-add-largest 12 13 14)
(square-add-largest 5 5 5)

