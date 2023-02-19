(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ascending? asc-lst)
(if (null?(cdr asc-lst)) true (and (or (> (cadr asc-lst)(car asc-lst) )(= (cadr asc-lst) (car asc-lst))) (ascending?(cdr asc-lst))) ))

(define (square n) (* n n))

(define (pow base exp) 
    (cond 
        ((= base 1) 1)
        ((= exp 0) 1)
        ((even? exp) (square (pow base (/ exp 2))))
        (else (* base (square (pow base (/ (- exp 1) 2)))))))



