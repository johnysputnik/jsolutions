
;; Comments can be added using a semi colon
(+
 (* 3 4)
 (+ 2 3))

;; The following lines are equivalent
(equal (quote (1 2 3 4))
     '(1 2 3 4))

;; The following items in the list are equivalent
(equal 'A\(B\) '|A(B)|)

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

(eql keyword:foo :foo)

(atom 1)

(atom :test)

(atom nil)

(atom '())

(atom "text")

(atom #(1 2 3))

(defun test-atomicity (x) (atom x))
(atom 'test-atomicity)

(atom (lambda (x) (atom x)))

(atom '(1 . 3))

(atom '(1 2 3))

(atom (cdr '(1 2 3)))
