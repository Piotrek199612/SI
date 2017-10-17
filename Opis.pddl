(define
	(domain Farmer)
	(:requirements :adl)
	(:predicates
		(onleft ?x)
		(boatleft)
		(caneat ?x ?y)
	)	
	
	(:action move_left_to_right
		:parameters (?x)
		:precondition
		(and
			(boatleft)
			(onleft ?x)
			(not(exists (?V1 ?V2) (and (not(= ?V1 ?x)) (not(= ?V2 ?x)) (not(= ?V1 ?V2))  (caneat ?V1 ?V2) (onleft ?V1)(onleft ?V2) ) ))
			
		)
		:effect
		(and
			(when  (onleft ?x) (not (onleft ?x)))
			(not(boatleft))
		)
	)
	(:action move_right_to_left
		:parameters (?x)
		:precondition
		(and
			(not(onleft ?x))
			(not (boatleft))
			(not(exists (?V1 ?V2) (and  (not(= ?V1 ?x)) (not(= ?V2 ?x)) (not(= ?V1 ?V2)) (caneat ?V1 ?V2) (not(onleft ?V1))(not(onleft ?V2)) ) ))
			
		)
		:effect
		(and
			(when (not(onleft ?x)) (onleft ?x))
			(boatleft)
		)
	)

(:action float_to_right
		:parameters ()
		:precondition
		(and
			 (boatleft)
			 (not(exists (?V1 ?V2) (and (not(= ?V1 ?V2)) (caneat ?V1 ?V2) (onleft ?V1)(onleft ?V2) ) ))
		)
		:effect
		(and
			(not(boatleft))
		)
	)
	(:action float_to_left
		:parameters ()
		:precondition
		(and
			(not (boatleft))
			(not(exists (?V1 ?V2) (and (not(= ?V1 ?V2)) (caneat ?V1 ?V2) (not(onleft ?V1))(not(onleft ?V2)) ) ))
		)
		:effect
		(and
			(boatleft)
		)
	)
)
