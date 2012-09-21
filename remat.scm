;This script removes the element at k'th position
(define (remat lis n)
  (cond ((null? lis) lis)
	((= n 1) (cdr lis))
	(else (cons (car lis) (remat (cdr lis) (- n 1))))
	)
  )
