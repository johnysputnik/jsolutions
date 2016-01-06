
;; Comments can be added using a semi colon
(+
 (* 3 4)
 (+ 2 3))
;; => 5

;; The following lines are equivalent
(quote (1 2 3 4))
;; => (1 2 3 4)
'(1 2 3 4)
;; => (1 2 3 4)

;; The following items in the list are equivalent
'(A\(B\) |A(B)|)
;; => (|A(B)| |A(B)|)

(defparameter x '(a b c))
;; x
`(x)
;; => (x)
`(,x)
;; => ((a b c))
`(,@x)
;; => (a b c)
`(x ,x ,@x foo ,(cadr x) bar ,(cdr x) baz ,@(cdr x))
;; => (x (a b c) a b c foo b bar (b c) baz b c)

;; reset is a symbol in the network package
;; (network:reset)

(eql ':foo :foo)
;; => T

(eql keyword:foo :foo)
;; => T
