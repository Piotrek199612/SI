(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(smaller ?x ?y)
		(on ?x ?y)
		(clear ?x)
	)
	
	(:action pickup
		:parameters (?x ?y ?z)
		:precondition
		(and
			(clear ?x)
			(clear ?y)
			(on ?x ?z)
			(not(clear ?z))
		)
		:effect
		(and
			(clear ?z)
			(on ?x ?y)
			(not(on ?x ?z))
			(not(clear ?y))
		)
	)
		
)