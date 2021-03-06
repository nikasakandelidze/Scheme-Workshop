	
(define (add-helper first second remainderToAdd)
	(if (and (null? first) (null? second))
		'()
	  	(if (null? second)
			(cons (+ remainderToAdd (car first)) (cdr first))
			(if (null? first)
				(cons (+ remainderToAdd (car second)) (cdr second))
				(cons (remainder (+ (car first) (car second) remainderToAdd) 10) (add-helper (cdr first) (cdr second) (quotient (+ (car first) (car second)) 10)))
			)
		)
	)
)

(define (add first second)
	(reverse (add-helper (reverse first) (reverse second) 0))	
)
