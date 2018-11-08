#lang racket

;This is an example implementation of ins_beg,
;It obviously doesn't do what it should, so you
;can edit this function to get started.
;
;Please note the provide function is necessary
;for the unit tests to work. Please include a
;(provide) for each function you write in your
;submitted assignment.
;
;You may delete these comments!

(provide ins_beg)
(provide ins_end)
(provide count_top_level)
(provide count_instances)
(provide count_instances_tr)
(provide count_instances_deep)

;A
(define (ins_beg a l)
  (cons a l)
  )

;B
(define (ins_end a l)
  (append l (list a))
  )

;C
(define (count_top_level l)
  (if (null? l)
      0
      (+ 1 (count_top_level (cdr l))))
  )

;D
(define (count_instances a l)
  (cond ((null? l) 0)
        ((equal? a (car l))
         (+ 1 (count_instances a (cdr l))))
        (else (count_instances a (cdr l))))
  )

;D
(define (count_instances_tr a l)
  (cinstance a l 0)
  )

;E
(define  (cinstance a l total)
  (cond
    ((empty? l) total)
    ((equal? a (car l)) (cinstance a (cdr l) (+ 1 total)))
    (else (cinstance a (cdr l) total)))
  )

;F
(define (count_instances_deep a l)
  (cond((empty? l) 0)
    ((equal? a (car l)) (+ 1 (count_instances_deep a (cdr l))))
    ((list? (car l)) (+ (count_instances_deep a (car l)) (count_instances_deep a (cdr l))))
    (else (count_instances_deep a (cdr l))))
  )

