;This script creates a list containing all integers within a range
(define (range l u)
  (cond ((= l u) '())
	((< l u) (foo l u '()))
	(else (fubar l u '()))
	)
  )
(define (foo l u lis)
  (if (<= l u) (foo l (- u 1) (cons u lis)) lis)
  )
(define (fubar l u lis)
  (if (>= l u) (fubar l (+ u 1) (cons u lis)) lis)
  )
