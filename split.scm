;This script splits a list innt two parts
(define (split lis n)
  (foo lis (+ (- (length lis) n) 1))
  )
(define (foo lis n)
  (cond ((null? lis) lis)
	((null? (cdr lis)) (list lis))
	((= (length lis) n) (cons (list (car lis)) (foo (cdr lis) n)))
	(else (append (list (cons (car lis) (car (foo (cdr lis) n)))) (cdr (foo (cdr lis) n))))
	)
  )