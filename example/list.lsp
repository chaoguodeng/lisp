(define
	(len l)
	(if
		(atom l)
		0
		(each
			(loop
				(define i 0) # ʹ��label��ʾ����һ������
				(not (atom l))
				(each
					(define l (cdr l))
					(define i (+ i 1))
				)
			)
			i
		)
	)
)
(define
	(index l i)
	(if
		(catch # ��׽����ת��Ϊһ���ַ�������
			(each
				(loop
					() # �ձ��ᱻִ�У���������
					(!= i 0)
					(each
						(define i (- i 1))
						(define l (cdr l))
					)
				)
				(define c (car l))
			)
		)
		(raise "out of range") # ��������
		c # ������ú�����ִ�в�������ڲ㻷��
	)
)
(define
	(reverse l)
	(each
		(loop
			(define s ())
			(not (atom l))
			(each
				(define i (car l))
				(define l (cdr l))
				(define s (cons i s))
			)
		)
		s
	)
)
(define
	(map l f)
	(each
		(define s ())
		(loop
			()
			(not (atom l))
			(each
				(define i (car l))
				(define l (cdr l))
				(define s (cons (f i) s))
			)
		)
		(reverse s)
	)
)
(define
	(filter l f)
	(each
		(define s ())
		(loop
			()
			(not (atom l))
			(each
				(define i (car l))
				(define l (cdr l))
				(if
					(f i)
					(define s (cons i s))
					()
				)
			)
		)
		(reverse s)
	)
)
(define
	(range i j)
	(each
		(loop
			(define l ())
			(< i j)
			(each
				(define j (- j 1))
				(define l (cons j l))
			)
		)
		l
	)
)
(quote "ok")