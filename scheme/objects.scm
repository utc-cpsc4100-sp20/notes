(define (getParams  . rest)
  rest)

(define (make-wrapper)
  (let ((value 0))
    (lambda ( method . args )
      (cond
       ((eq? method 'getValue) value)
       ((eq? method 'setValue) (set! value (car args)))
       (else 'notImplemented)))
    ))

(define (fib n)
  (if (< n 2) n
      (+ (fib (- n 1)) (fib (- n 2)))))

(define fib-cache '())

(define (fib2 n)
  (let ((val (assq n fib-cache)))
    (if val (cdr val)
        (let (( result  (if (< n 2) n
                            (+ (fib2 (- n 1)) (fib2 (- n 2))))))
          (set! fib-cache (cons (cons n result) fib-cache))
          result))))
  
