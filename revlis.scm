;this script reverses a list
(define (exposed lis)
  (display (revlist lis '()))
)

(define (revlist lis rev)
  (if (null? lis)
      rev
      (revlist (cdr lis) (cons (car lis) rev) )
  )
)

