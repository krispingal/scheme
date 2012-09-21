;This script is to flatten a list
(define (flatten lis)
  (cond ((null? lis) ())
        ((not (pair? lis)) (list lis))
        (else (append (flatten (car lis)) (flatten (cdr lis))))
   )
)
