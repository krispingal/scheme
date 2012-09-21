;this script is for eliminating consecutive duplicate elements
(define (exposed lis)
(compress lis '() 0))


(define (compress lis nwlis x)
  (cond ((null? lis) (display (revlist nwlis '() )))
	((null? (cdr lis)) (if (= x 0) (compress (cdr lis) (cons (car lis) nwlis) 0)))
	((= (car lis) (car (cdr lis))) (compress (cdr lis) nwlis 1))
  (else ((compress (cdr lis) (cons (car lis) nwlis) 0)))
)
) 
(define (revlist lis rev)
  (if (null? lis)
      rev
      (revlist (cdr lis) (cons (car lis) rev) )
  )
)
