

// Bike

Bike := Object clone do (

	isBroken := false
		
)

Bike break := method(isBroken = true)

Bike fix := method(isBroken = false)


// Station

Station := Object clone do (

	bikes := list()

)

Station dock := method(bike,
	bikes append(bike) 
)

Station release := method(bike,
	bikes pop(bike)
)
