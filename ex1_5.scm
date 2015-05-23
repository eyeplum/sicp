(define (p) (p))

(define (test x y)
  (if (= x 0)
    x
    y))

(test 0 (p))

;;; applicative-order eval
(if true
  x
  y) ;;; => x => 0
;;; y is never evaluated


;;; normal order eval
(if (= 0 0)
  0
  (p)) ;;; => 0
;;; everything is evaluated

