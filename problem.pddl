(define (problem p1)
	(:domain world-of-blocks)
	(:objects k1 k2 k3 s1 s2 s3)
	(:init
		(clear k3)
		
		(clear s2)
		(clear s3)
		
		(on k1 s1)
		(on k2 k1)
		(on k3 k2)

		(smaller k3 k2)
		(smaller k3 k1)
		(smaller k3 s1)
		(smaller k3 s2)
		(smaller k3 s3)
	
		(smaller k2 k1)
		(smaller k2 s1)
		(smaller k2 s2)
		(smaller k2 s3)
		
		(smaller k1 s1)
		(smaller k1 s2)
		(smaller k1 s3)
	)
	(:goal
		(and
			(clear s1)
			(clear s2)
			(clear k3)
			;(on k3 s3)
			;(on k2 k3)
			
			(on k1 s3)
			(on k2 k1)	
			(on k3 k2)
		)
	)
)