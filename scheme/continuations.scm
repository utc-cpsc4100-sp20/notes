;; Scheme's first-class continuations
;; demonstrated Mon Mar 23 2020

;; the 'escape procedure' can be called to restore the current continuation
;; (define kont)
;; (cons 'top (call-with-current-continuation (lambda (c^) (set! kont c^))))    


;; calling an escape procedure throws away the rest of the work on the stack
;; and replaces it with the continuation
;; (+ (call/cc (lambda (k^) (/ (k^ 5) 0))) 8)


;; re-evaluate a form by using the continuation multiple times
;;       (define kont '())
;;       (define (go)
;;         (let ((cmd (call/cc (lambda (c) (set! kont c) 'none))))
;;           (cond
;;            ((eq? cmd 'up) 1)
;;            ((eq? cmd 'down) -1)
;;            (else 0))))
;;
;;       (+ 100 (go))
;;       (kont 'up)
;;       (kont 'down)


;; we can build something kind of useful --
       (define escape)                         ;top-level
       (define RESUME)
       (call/cc (lambda (k^) (set! escape k^)))

       (define BREAK
         (lambda (msg)
           (call/cc
            (lambda (k^)
              (set! RESUME k^)
              (escape msg)))))

       ;; (map
       ;;  (lambda (a)
       ;;    (BREAK (string-append "mid map: " (number->string a)))
       ;;    (+ 5 a))
       ;;  '(1 2 3))

