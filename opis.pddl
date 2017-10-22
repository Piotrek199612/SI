(define
	(domain sokoban)
	(:requirements :adl)
	(:predicates
		(cel ?x)
		(paczka ?x)
		(robot ?x)
		(pionowo ?x ?y)
		(poziomo ?x ?y)
	)
	
	(:action idz
		:parameters (?x ?y)
		:precondition
		(and
			(not (= ?x ?y))
			(robot ?x)
			(not (paczka ?y))
			(or (pionowo ?x ?y) (poziomo ?x ?y))
			
		)
		:effect
		(and
			(not(robot ?x))
			(robot ?y)
		)
	)
	
	(:action pchaj
		:parameters (?x ?y ?z)
		:precondition
		(and
			(robot ?x)
			(paczka ?y)
			(not (= ?x ?y))
			(not (= ?x ?z))
			(not (= ?z ?y))
			(or 
				(and 
					(pionowo ?x ?y)
					(pionowo ?y ?z) 
					(not (paczka ?z))
				)
				(and 
					(poziomo ?x ?y)
					(poziomo ?y ?z) 
					(not (paczka ?z))
				)

			)
		)
		:effect
		(and
			(not (paczka ?y))
			(paczka ?z)
			(not(robot ?x))
			(robot ?y)
		)
	)
	
)