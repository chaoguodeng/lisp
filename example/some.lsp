(define
	sum
	(omission
		(lambda
			(x y)
			(if
				(atom y)
				x
				(loop
					()
					(not (atom y))
					(each
						(define z (car y))
						(define y (cdr y))
						(define x (+ x z))
					)
				)
			)
		)
	)
)
(define
	max
	(omission
		(lambda
			(x y)
			(if
				(atom y)
				x
				(loop
					()
					(not (atom y))
					(each
						(define z (car y))
						(define y (cdr y))
						(if
							(< x z)
							(define x z)
							x
						)
					)
				)
			)
		)
	)
)
(define
	min
	(omission
		(lambda
			(x y)
			(if
				(atom y)
				x
				(loop
					()
					(not (atom y))
					(each
						(define z (car y))
						(define y (cdr y))
						(if
							(> x z)
							(define x z)
							x
						)
					)
				)
			)
		)
	)
)
(define
	(init n)
	(lambda
		()
		(define
			n
			(+ n 1)
		)
	)
)
(quote "ok")

