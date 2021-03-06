(define (exposed n)
  (display (genrand n '()))
)
(define (genrand n lis)
  (if (= (length lis) n)
      lis
      (genrand n (cons (gdrnum n lis) lis))
      )
)
(define (gdrnum n lis)
  (define i (random n))
  (if (checknum (i lis))
		(i)
		(gdrnum n lis)
		)
)
(define (checknum n lis)
  (cond ((null? lis) #t)
	((= n (car lis)) #f) 
	(else (checknum n (cdr lis)))
	)
)