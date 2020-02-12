;; assume lst is a list of integers
(define (evens lst)
  (if (null? lst)
      '()
      (if (even? (car lst))
          (cons (car lst) (evens (cdr lst)))
          (evens (cdr lst)))))

;; scheme@(guile-user)>  (evens '(1 2 3))
;; $51 = 1
;; scheme@(guile-user)> null?
;; $52 = #<procedure null? (_)>
;; scheme@(guile-user)> (null? '())
;; $53 = #t
;; scheme@(guile-user)> (evens '(1 2 3 4 5 6 8 7))
;; $54 = (2 4 6 8)
;; scheme@(guile-user)> filter
;; $55 = #<procedure filter (_ _)>
;; scheme@(guile-user)> (filter even? '( 1 2 3 4 5 6 ))
;; $56 = (2 4 6)
;; scheme@(guile-user)> (filter odd? '( 1 2 3 4 5 6 ))
;; $57 = (1 3 5)
;; scheme@(guile-user)> (filter number? '( 1 2 3 4 5 6 ))
;; $58 = (1 2 3 4 5 6)
;; scheme@(guile-user)> (filter string? '( 1 2 3 4 5 6 ))
;; $59 = ()
;; scheme@(guile-user)> (apply + '( 1 2 3 4 5 6 ))
;; $60 = 21
;; scheme@(guile-user)> (map odd? '( 1 2 3 4 5 6 ))
;; $61 = (#t #f #t #f #t #f)
;; scheme@(guile-user)> (map + '(1 2 3) '(100 200 300))
;; $62 = (101 202 303)
;; scheme@(guile-user)>


