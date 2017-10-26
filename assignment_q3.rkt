#lang racket

;a
;Define tree
(define tree'(((() 2 ()) 3 (() 4 ())) 8 ((() 10 ()) 12 (() 15 ()))))



;Displaye sorted tree
(define (sort_tree tree)
  (begin (cond [(not (null? (car tree))) (sort_tree (car tree))])
         (printf "~a~n" (cadr tree))
         (cond [(not (empty? (caddr tree))) (sort_tree (caddr tree))])))

;b
(define (present_in_tree item tree)
  (cond [(empty? tree) #f]
        [(equal? item (cadr tree)) #t]
       
        [(< item (cadr tree)) (present_in_tree item (car tree))]
        [else (present_in_tree item (caddr tree))]))
(display "number present??")
(present_in_tree 8 tree)
(present_in_tree 7 tree)


