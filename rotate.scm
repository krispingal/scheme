;This script rotates a list n places to the lefft
(define (rotate lis n)
  (cond ((null? lis) lis)
	((= 0 n) lis)
	(else (rotate (append (cdr lis) (list (car lis))) (- n 1)))
	)
  )
