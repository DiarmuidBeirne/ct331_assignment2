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

;A
(define (ins_beg el lst)
 (append (list el) lst))

;B
(define (ins_end el lst)
 (append lst (list el)))

;C
(define (count_top_level lst)
 (if (null? lst)
      0
      (+ 1 (count_top_level (cdr lst)))))

;D
(define (count_instances item lst)
  (cond [(null? lst) 0]
        [(equal? item (car lst)) (+ 1 (count_instances item (cdr lst)))]
        [else (count_instances item (cdr lst))]))


