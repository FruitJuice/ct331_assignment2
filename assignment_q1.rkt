#lang racket
;Cons pair of two numbers
(cons 1 2)

;List of 3 numbers only using cons
(cons 1 (cons 2 (cons 3 empty)))

;A list containing a string, a number and a nested list of three numbers, using only the cons function.
(cons "attempt"(cons 1(cons (cons 2(cons 3(cons 4 empty))) empty)))

;A list containing a string, a number and a nested list of three numbers, using only the list function.
(list "attempt2" 5 '(6 7 8))

;A list containing a string, a number and a nested list of three numbers, using only theappend function. 
(append '("attempt3") '(9) '((10 11 12)))

