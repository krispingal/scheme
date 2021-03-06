;this sscript runs a modified run length encoding
(define (encode-modified lis)
  (cond ((null? lis) lis)
	((null? (cdr lis)) (list (car lis)))
	((= (car lis) (cadr lis)) 
	 (if (list? (car (encode-modified (cdr lis)))) 
	     (append (list (cons (+ 1 (car (car (encode-modified (cdr lis))))) (list (car lis)))) (cdr (encode-modified (cdr lis))))
	     (append (list (cons 2 (list (car lis)))) (cdr (encode-modified (cdr lis))))
	    ))
	(else (cons (car lis) (encode-modified (cdr lis))))
	)
  )
