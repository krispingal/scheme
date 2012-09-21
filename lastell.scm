;this is problem no.1 to find the last element of a list
(define (lastl lis)
(if (null? (cdr lis))

(write (car lis))
(lastl (cdr lis)
))) 
