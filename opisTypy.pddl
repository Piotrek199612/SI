(define
	(domain hanoiroot)
	(:requirements :adl)
	(:types palik krazek)
	(:predicates
		(na_paliku ?x - palik ?y - krazek)
		(na_krazku ?x - krazek ?y - krazek)
		(smaller ?x - krazek ?y - krazek)
	)
	
	(:action przesun-na-pusty
		:parameters (?x - palik ?y - palik ?z - krazek)
		:precondition
		(and
			(na_paliku ?x ?z)
			(not (exists (?k - krazek) (na_paliku ?y ?k)))
			(not (exists (?k - krazek) (na_krazku ?z ?k)))
		)
		:effect
		(and
			(forall (?d - krazek) (not(na_krazku ?d ?z)))
			(not(na_paliku ?x ?z))
			(na_paliku ?y ?z)
		)
	)	
	
	(:action przesun
		:parameters (?w - palik ?x - palik ?y - krazek ?z - krazek)
		:precondition
		(and
			(na_paliku ?w ?y)
			(na_paliku ?x ?z)
			(smaller ?y ?z)
			(not (exists (?k - krazek) (na_krazku ?z ?k)))
			(not (exists (?k - krazek) (na_krazku ?y ?k)))
		)
		:effect
		(and
			(forall (?d - krazek) (not(na_krazku ?d ?y)))
			(not(na_paliku ?w ?y))
			(na_paliku ?x ?y)
			(na_krazku ?z ?y)
		)
	)
	
)