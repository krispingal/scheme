(define (len (lambda (lis)))
(if (null? (cdr lis))
0
(+ 1 (len(cdr lis))))
)

