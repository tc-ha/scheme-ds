(define (make-dequeue)
  (list '() '()))

(define (dequeue-empty? dq)
  (and (null? (car dq))
       (null? (cdr dq))))

(define (dequeue-add-front item dq)
  (set-car! dq (cons item (car dq))))

(define (dequeue-add-rear item dq)
  (set-cdr! dq (cons item (cdr dq))))

(define (dequeue-remove-front dq)
  (let ((item (car (car dq))))
    (set-car! dq (cdr (car dq)))
    item))

(define (dequeue-remove-rear dq)
  (let ((item (car (cdr dq))))
    (set-cdr! dq (cdr (cdr dq)))
    item))

(define (dequeue-size dq)
  (+ (length (car dq))
     (length (cdr dq))))

(define dq (make-dequeue))
(dequeue-empty? dq)
(dequeue-add-rear 4 dq)
(dequeue-add-rear 'dog dq)
(dequeue-add-front 'cat dq)
(dequeue-add-front #t dq)
(dequeue-size dq)
(dequeue-empty? dq)
(dequeue-add-rear 8.4 dq)
(dequeue-remove-rear dq)
(dequeue-remove-front dq)
