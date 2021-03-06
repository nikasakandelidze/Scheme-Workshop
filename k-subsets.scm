;;;;;;;;; ('(1 2) 2)==> #('(2) 2) ##('(2) 1) ==> #'()  ##-->#('() 1) ##('() 0)


(define (k-subsets sequence k)
	(if (zero? k)
		'(())
		(if (> k (length sequence))
			'()
			(let ((k-sub (k-subsets (cdr sequence) k))
			      (k-1-sub (k-subsets (cdr sequence) (- k 1))) 
			     )
			     (append (map (lambda (x) (cons (car sequence x))) k-1-sub) k-sub) 
			)
		)
	)
)
