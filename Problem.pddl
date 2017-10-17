(define (problem p1)
	(:domain world-of-blocks)
	(:objects koza wilk salata)
	(:init
		(onleft koza)
		(onleft wilk)
		(onleft salata)
		
		(boatleft)
		
		(caneat wilk koza)
		(caneat koza salata)
	)
	(:goal
		(and
			(not (onleft koza))
			(not(onleft wilk))
			(not(onleft salata))
			(not(boatleft))
		)
	)
)