;; (define (discriminant a b c)
;;   (- (* b b) (* 4 a c)))

(define discriminant
  (lambda (a b c)
    (- (* b b) (* 4 a c))))

(define (quadratic a b c)
  (cons
   (/ (+ (- b)
         (sqrt (discriminant a b c)))
      (* 2 a))
   (/ (- (- b)
         (sqrt (discriminant a b c)))
      (* 2 a))
   ))

;; let forms allow us to introduce a new environment where variables are bound
;; to useful values (eliminating redundancy)
(define (quadratic2 a b c)
  (let  ((disc (sqrt (discriminant a b c)))
         (denom (* 2 a)))
    ;; body evaluated in this new environment
    (cons ( / (+ (- b) disc) denom)
          ( / (- (- b) disc) denom))))


;; ;; a let form  is equivalent to the evaluation of an anonymous lambda

;; ;; consider this let form
;; (let ((x 10)
;;       (y 20))
;;   (+ x y))

;; ;; this is equivalent
;; ((lambda (x y)
;;    (+ x y))
;;  10  20)


;; ;; when let variables depend on each other an alternate form is required:
;; (let* ((x 1)
;;       (y (+ 10 x)))
;;   (+ x y))

;; ;; the normal let transformation would yield this, which uses the variable x
;; ;; that is out of scope
;; ((lambda (x y)
;;    (+ x y))
;;  1 (+ 10 x))


;; ;; what if we evaluate to a procedure that refers to the let's temporary
;; ;; environment?  this is a closure
;; (let ((x 10))
;;   (lambda (a)
;;     (+ a x)))


;; ;; we can do this in some powerful ways
;; (define (make-adder x)
;;   (lambda (a)
;;     (+ a x)))

;; scheme@(guile-user)> (map (make-adder 42) '(1 2 3 4 5))
;; $26 = (43 44 45 46 47)

(define (replace x lst)
  (if (null? lst ) '()
      (cons x (replace x (cdr lst)))))

(define (replace2 x lst)
  (map (lambda (z) x) lst))
