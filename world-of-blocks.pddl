(define
	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(on-top ?x ?y)
		(on-floor ?x)
		(clear ?x)
		(armempty)
		(inarm ?x)
	)
	
	(:action pickup
		:parameters (?x)
		:precondition
		(and
			(on-floor ?x)
			(armempty)
		)
		:effect
		(and
			(inarm ?x)
			(not(armempty))
			(not(on-floor ?x))
		)
	)

	(:action putdown
		:parameters (?x)
		:precondition
		(and
			(inarm ?x)
		)
		:effect
		(and
			(on-floor ?x)
			(armempty)
			(not(inarm ?x))
		)
	)		
	
	(:action stack
		:parameters (?x ?y)
		:precondition
		(and
			(clear ?y)
			(inarm ?x)
		)
		:effect
		(and
			(on-top ?x ?y)
			(not(inarm ?x))
			(clear ?x)
			(armempty)
		)
	)
	
	(:action unstack
		:parameters (?x ?y)
		:precondition
		(and
			(clear ?x)
			(armempty)
			(on-top ?x ?y)
		)
		:effect
		(and
			(not(armempty))
			(inarm ?x)
			(not(on-top ?x ?y))
			(clear ?y)
		)
	)
	
)