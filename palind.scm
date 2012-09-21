;This script findswhether a list is palindrome or not
(define (exposed lis)
(define rev (revlist lis '()))
  (display (palcheck lis rev)
))
(define (palcheck lis rev)
(cond ((null? lis ) "palindrome" )
      ((= (car lis) (car rev)) (palcheck (cdr lis) (cdr rev)))
 (else "not palindrome")
))
(define (revlist lis rev)
  (if (null? lis)
      rev
      (revlist (cdr lis) (cons (car lis) rev) )
  )
)

