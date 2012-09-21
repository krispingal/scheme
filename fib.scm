;This script is to find the n'th fibonacci element
(define (fib n)
(cond ((= n 1)
1)
((= n 2)
1)
(else (+ (fib(- n 1)) (fib(- n 2)))
)
))
