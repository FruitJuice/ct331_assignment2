#lang racket

(require (file "assignment_q2.rkt")
         (file "assignment_q3.rkt"))

;
;Don't worry about this file unless you are doing the extra credit tests. 
;

;This structure allows a single function call
;to run every test in sequence, rather than
;calling each function separately. 
(define (runTests)
  (begin
    (display "Running tests...\n")
    ;begin calling test functions
    (printf "1: ~a\n\n" (test_ins_beg1))
    (printf "2: ~a\n\n" (test_ins_end1))
    (printf "3: ~a\n\n" (count_top_level_test1))
    (printf "4: ~a\n\n" (count_instances_test1))
    (printf "5: ~a\n\n" (count_instances_tr1))
    (printf "6: ~a\n\n" (count_instances_deep1))
    ;end calling test functions
    (display "\nTests complete!\n")))

;Begin test functions
(define (test_ins_beg1)
  (display "Hello, I'm ins_beg\n")
  (equal? (ins_beg 1 '(2 3 4)) '(1 2 3 4))
  )

(define (test_ins_end1)
  (display "Hello, I'm ins_end\n")
  (equal? (ins_end 1 '(2 3 4)) '(2 3 4 1))
  )

(define (count_top_level_test1)
  (display "Hello, I'm count_top_level\n")
  (equal? (count_top_level (list (list 1 2) (list 3 4) (list 5 6) 9 8)) 5)
  )

(define (count_instances_test1)
  (display "Hello, I'm count_instances\n")
  (equal? (count_instances 1 '(1 2 3 4 5 6 7 8 1)) 2)
  )

(define (count_instances_tr1)
  (display "Hello, I'm count_instances_tr\n")
  (equal? (count_instances_tr 1 '(1 2 3 4 5 6 7 8 1)) 2)
  )

(define (count_instances_deep1)
  (display "Hello, I'm count_instances_deep\n")
  (equal? (count_instances_deep 5 (list (list 1 3) (list 5 2) (list 7 5) 5 3)) 3)
  )

;End test functions

;Run the tests
(runTests)