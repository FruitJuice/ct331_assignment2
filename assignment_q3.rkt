#lang racket


(define (left_branch tree)
  (car tree))

(define (right_branch tree)
  (caddr tree))

;A
(define (sortTree tree)
 (begin(cond ((not (empty?(left_branch tree))) (sortTree (left_branch tree))))
   (printf "~a " (cadr tree));
   (cond ((not (empty?(right_branch tree))) (sortTree (right_branch tree))))))

;B
(define (findItem a tree)
  (cond((empty? tree) #f)
       ((empty? a (cadr tree)) #t)
       ((< a (cadr tree)) (findItem a (left_branch tree)))
       (else (findItem a (right_branch tree)))
       )
  )


;C
(define (addItem a tree)
  (cond((null? tree)(list '() a'()))
       ((equal? a (cadr tree)) tree)
       ((< a (cadr tree))
       (list (addItem a (left_branch tree))(cadr tree)(right_branch tree)))
       (else(list (left_branch tree)(cadr tree)(addItem a (right_branch tree)))))
  )

;D
(define (addList items tree)
  (cond((null? tree))
       ((empty? items) tree)
       (else (addList (cdr items) (addItem (car items) tree))))
  )

(define (addList_high_order list tree left)
  (if (empty? list) tree
       (addList_high_order (cdr list) (high_order_tree (car list) tree left) left))
  )

;E
(define (treeSort l)
  (sortTree (addList l '()))
  )

;F
(define (high_sort_order items func)
  (sort (addList_high_order items '() func))
  )


(define (high_order_tree item tree left)
  (cond((null? tree)(list '() item '()))
       ((equal? item(cadr tree)) tree)
       ((left item (cadr tree))
        (list (high_order_tree item (left_branch tree) left)(cadr tree)(right_branch tree)))
       (else(list(left_branch tree)(cadr tree)(high_order_tree (right_branch tree)left))))
  )