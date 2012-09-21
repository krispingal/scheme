;This script is for packing consecutive duplicates of list elements into sublists;
(define (pack lis)
  (cond ((null? lis) '())
	((null? (cdr lis)) (list (list (car lis))))
        ((= (car lis) (cadr lis)) (append (list (cons (car lis) (car (pack (cdr lis))))) (cdr (pack (cdr lis))) ) )
	(else (append (list (list (car lis))) (pack (cdr lis))))
	)
)
   
