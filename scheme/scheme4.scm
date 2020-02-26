

(define (mymap proc lst)
  (if (null? lst) '()
      (cons (proc (car lst))
            (mymap proc (cdr lst)))))

(define (myfilter pred lst)
  (if (null? lst) '()
      (if (pred (car lst))
          (cons (car lst) (myfilter pred (cdr lst)))
          (myfilter pred (cdr lst)))))

(define (mynegate pred)
  (lambda (x)
    (not (pred x))))

(define (bind-first proc x)
  (lambda ( . z)
    (apply proc x z)))

(define (argtest first . rest)
  (display first) (newline)
  (display rest) (newline)
  'ok
  )


;; sum = a+b
;; result=sqrt(sum);
;; sqrt(a+b)

(define countdown
  (let ((x 10))
    (lambda ()
      (set! x (- x 1))
      x)))


(define (make-countdown start)
  (let ((x start))
    (lambda ( . ignored)
      (if (> x 0)
          (begin (set! x (- x 1))
                 x)
          #f))))
