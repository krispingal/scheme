;This script drops every n'th elent from the list
(define (exposed lis n)
  (display (foo lis n 1))
  )
(define (foo lis n i)
  (cond ((null? lis) lis)
	((<= (+ (- (* n i) i) 1) (length lis)) (foo (fubar lis (+ (- (* n i) i) 1)) n (+ i 1)))
	(else lis)
	)
  )
(define (fubar lis n)
  (if (= 1 n)
      (cdr lis)
      (cons (car lis) (fubar (cdr lis) (- n 1)))
      )
  )