;This script is to insert an element at
(define (insat lis x n)
  (cond ((null? lis) lis)
	((= n 1) (cons x  lis))
	(else (cons (car lis) (insat (cdr lis) x (- n 1))))
	)
  )
