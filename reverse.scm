
(define (revlist lis rev)

(if (null? lis)
(display rev)
(revlist (cdr lis) (cons (car lis) rev))
)

)