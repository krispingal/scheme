;This script duplicates the elements of a list
(define (dupli lis)
  (cond ((null? lis) lis)
	((null? (cdr lis)) (cons (car lis) (list (car lis))))
	(else (append (cons (car lis) (list (car lis))) (dupli (cdr lis))))
	)
  )
