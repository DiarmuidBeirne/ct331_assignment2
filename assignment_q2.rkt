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
(define (ins_beg el lst)
 (append (list el) lst))

;B
(define (ins_end el lst)
 (append lst (list el)))



;Create Lists for testing 
(define list1 (list 3 4 5 1 5 5))
(define list2 (list 2 1 '(2 4)))


;C
(define (count_top_level lst) ;Was unsure if cout was  mistake i presumed cout is supposed to be count
 (if (null? lst)
      0
      (+ 1 (count_top_level (cdr lst)))))

;D
(define (count_instances item lst)
  (cond [(null? lst) 0]
        [(equal? item (car lst)) (+ 1 (count_instances item (cdr lst)))]
        [else (count_instances item (cdr lst))]))



;E
(define (count_instances_tr item lst)
  (helper_count_instances_tr item lst 0))
 

(define (helper_count_instances_tr item lst count)
  (cond [(empty? lst) count]
        [(equal? item (car lst)) (helper_count_instances_tr item (cdr lst) (+ 1 count))]
        [else (helper_count_instances_tr item (cdr lst) count)]))


;F
(define (count_instances_deep item lst)
  (cond [(empty? lst) 0]
        [(list? (car lst))
         (+ (count_instances_deep item (car lst)) (count_instances_deep item (cdr lst)))]
        [(equal? item (car lst)) (+ 1 (count_instances_deep item (cdr lst)))]
[else (count_instances_deep item (cdr lst))]))


