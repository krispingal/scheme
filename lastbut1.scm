;This script is to display the last but 1 element of a list

(define (last lis)
(if (null? (cdr (cdr lis))) 
(display (car lis))
(last (cdr lis))))
