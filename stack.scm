(define (make-stack)
  (list '()))

(define (empty? stack)
  (null? (car stack)))

(define (push item stack)
  (set-car! stack (cons item (car stack))))

(define (pop stack)
  (let ((top (car (car stack))))
    (set-car! stack (cdr (car stack)))
    top))

(define (peek stack)
  (car (car stack)))

(define (size stack)
  (length (car stack)))

(define s (make-stack))
(empty? s)
(push 4 s)
(push 'dog s)
(peek s)
(push #t s)
(size s)
(empty? s)
(push 8.4 s)
(pop s)
(pop s)
(size s)
