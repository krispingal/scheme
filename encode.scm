;This script runs length encoding of a list
(define (encode lis)
  (cond ((null? lis) lis)
	((null? (cdr lis)) (list (cons 1 (list (car lis)))) )
	((= (car lis) (cadr lis))
	 (append (list (cons (+ (car (car (encode (cdr lis)))) 1) (cdr (car (encode (cdr lis)))) ) ) (cdr (encode (cdr lis)))) )
	(else (append (list (cons 1 (list (car lis)))) (encode (cdr lis))))
        )
  )
