(define (make-uf n)
  (list n (range n) (make-list n 0)))

(define (uf-find uf x)
  (let ((parent (cadr uf)))
    (if (eq? (list-ref parent x) x)
        x
        (let ((root (uf-find uf (list-ref parent x))))
          (list-set! parent x root)
          root))))

(define (uf-union uf x y)
  (let ((parent (cadr uf))
        (rank (caddr uf)))
    (let ((x-root (uf-find uf x))
          (y-root (uf-find uf y)))
      (if (eq? x-root y-root)
          #f
          (if (< (list-ref rank x-root) (list-ref rank y-root))
              (list-set! parent x-root y-root)
              (if (> (list-ref rank x-root) (list-ref rank y-root))
                  (list-set! parent y-root x-root)
                  (begin
                    (list-set! parent y-root x-root)
                    (list-set! rank x-root (+ (list-ref rank x-root) 1)))))))))
