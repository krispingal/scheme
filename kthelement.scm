;This script is for finding the k'th element of a list
(define (element-at lis n)
(define i (- (length lis) (- n 1)))
(traverse lis i)
)
(define (traverse lis i)
(if (= (length lis) i)
 
(display (car lis)) 

(traverse (cdr lis) i)))
