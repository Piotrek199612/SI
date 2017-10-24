(define
	(domain hanoi)
	(:requirements :adl)
	(:predicates
		(on-top ?x ?y)
		(clear ?x)
		(smaller ?x ?y)
	)
	(:action przesun-na-pusty
		:parameters (?x ?y ?z)
		:precondition
		(and
			(clear ?y)
			(clear ?z)
			(not (clear ?x))
			(smaller ?z ?y)
			(on-top ?z ?x)
		)
		:effect
		(and
		(not (on-top ?z ?x))
			(on-top ?z ?y)
			(not(clear ?y))
			(clear ?x)
		)
	)
)
