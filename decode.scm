;this script when given a run length code list constructs the uncompressed version;
(define (decode lis)
  (cond ((null? lis) lis)
	((null? (cdr lis)) (if (list? (car lis))
			       (foo (car (cdr (car lis))) (car (car lis)))
			       (list (car lis))
			       )
	 )
	((list? (car lis)) (append (foo (car (cdr (car lis))) (car (car lis))) (decode (cdr lis))) )
	(else (cons (car lis) (decode (cdr lis))))
	)
  )
(define (foo i n)
  (if (= n 0)
      '()
      (cons i (foo i (- n 1)))
  )
)
	
			       
