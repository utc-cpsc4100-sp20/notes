;; Enter `,help' for help.
;; scheme@(guile-user)> 1
;; $2 = 1
;; scheme@(guile-user)> #t
;; $3 = #t
;; scheme@(guile-user)> #f
;; $4 = #f
;; scheme@(guile-user)> 13.5
;; $5 = 13.5
;; scheme@(guile-user)> 10+2i
;; $6 = 10.0+2.0i
;; scheme@(guile-user)> "string"
;; $7 = "string"
;; scheme@(guile-user)> #\s
;; $8 = #\s
;; scheme@(guile-user)> 'hello
;; $9 = hello
;; scheme@(guile-user)> 12/3
;; $10 = 4
;; scheme@(guile-user)> 12/5
;; $11 = 12/5
;; scheme@(guile-user)> '(1 2 3)
;; $12 = (1 2 3)
;; scheme@(guile-user)> '(1 (2 3))
;; $13 = (1 (2 3))
;; scheme@(guile-user)> 'hello
;; $14 = hello
;; scheme@(guile-user)> hello
;; ;;; <unknown-location>: warning: possibly unbound variable `hello'
;; ERROR: In procedure module-lookup: Unbound variable: hello

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,quasiquote
;; Unknown meta command: quasiquote
;; scheme@(guile-user) [1]> ,q 
;; scheme@(guile-user)> '(1 2)
;; $15 = (1 2)
;; scheme@(guile-user)> (1 2)
;; ERROR: Wrong type to apply: 1

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,q
;; scheme@(guile-user)> +
;; $16 = #<procedure + (#:optional _ _ . _)>
;; scheme@(guile-user)> (+ 1 2 3)
;; $17 = 6
;; scheme@(guile-user)> '(1 2 3)
;; $18 = (1 2 3)
;; scheme@(guile-user)> (car '(1 2 3))
;; $19 = 1
;; scheme@(guile-user)> (car '(100 2 3))
;; $20 = 100
;; scheme@(guile-user)> (cdr '(100 2 3))
;; $21 = (2 3)
;; scheme@(guile-user)> (cons 'a 'b)
;; $22 = (a . b)
;; scheme@(guile-user)> (car (cons 'a 'b))
;; $23 = a
;; scheme@(guile-user)> (cdr (cons 'a 'b))
;; $24 = b
;; scheme@(guile-user)> (cdr '(100 2))
;; $25 = (2)
;; scheme@(guile-user)> (car (cdr '(100 2)))
;; $26 = 2
;; scheme@(guile-user)> (cdr (cdr '(100 2)))
;; $27 = ()
;; scheme@(guile-user)> '()
;; $28 = ()
;; scheme@(guile-user)> (cons 'a 'b)
;; $29 = (a . b)
;; scheme@(guile-user)> (cons 'a '())
;; $30 = (a)
;; scheme@(guile-user)> (cons 'a '(1 2 3))
;; $31 = (a 1 2 3)
;; scheme@(guile-user)> (+ 1 2 3)
;; $32 = 6
;; scheme@(guile-user)> (+ 1 2 'a)
;; <unnamed port>:199:0: In procedure +: Wrong type argument in position 1: a

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,q
;; scheme@(guile-user)> (lambda (x) (+ x 10))
;; $33 = #<procedure 272fd88 at <unknown port>:240:0 (x)>
;; scheme@(guile-user)> (define add10 (lambda (x) (+ x 10)))
;; scheme@(guile-user)> add10
;; $34 = #<procedure add10 (x)>
;; scheme@(guile-user)> (add10 100)
;; $35 = 110
;; scheme@(guile-user)> (add10 'a)
;; <unnamed port>:243:26: In procedure add10:
;; In procedure +: Wrong type argument in position 1: a

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,a
;; While executing meta-command:
;; Wrong number of arguments to #<procedure 7f34941a1c00 at system/repl/command.scm:338:0 (repl regexp)>
;; scheme@(guile-user) [1]> ,q
;; scheme@(guile-user)> (number->string 100)
;; $36 = "100"
;; scheme@(guile-user)> (string->number "12.3")
;; $37 = 12.3
;; scheme@(guile-user)> (+ 1 2 3 4)
;; $38 = 10
;; scheme@(guile-user)> (+ 1)
;; $39 = 1
;; scheme@(guile-user)> (+ 1 2 3 5)
;; $40 = 11
;; scheme@(guile-user)> '( 1 23 50509 59)
;; $41 = (1 23 50509 59)
;; scheme@(guile-user)> (+ '( 1 23 50509 59))
;; $42 = (1 23 50509 59)
;; scheme@(guile-user)> (+ '( 1 23 50509 59) '( 10 10 10 10))
;; <unnamed port>:277:0: In procedure +: Wrong type argument in position 1: (1 23 50509 59)

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,q
;; scheme@(guile-user)> (+ '( 1 23 50509 59) 10)
;; <unnamed port>:280:0: In procedure +: Wrong type argument in position 1: (1 23 50509 59)

;; Entering a new prompt.  Type `,bt' for a backtrace or `,q' to continue.
;; scheme@(guile-user) [1]> ,q
;; scheme@(guile-user)> (+ '( 1 23 50509 59))
;; $43 = (1 23 50509 59)
;; scheme@(guile-user)> (apply + '( 1 23 50509 59))
;; $44 = 50592
;; scheme@(guile-user)> apply
;; $45 = #<procedure apply (_ _ . _)>
;; scheme@(guile-user)> (if (> 1 0) 'a 'b)
;; $46 = a
;; scheme@(guile-user)> if
;; While compiling expression:
;; Syntax error:
;; unknown location: source expression failed to match any pattern in form if
;; scheme@(guile-user)> 
;; scheme@(guile-user)> (if (> 0 1) 'a 'b)
;; $47 = b
;; scheme@(guile-user)> 
