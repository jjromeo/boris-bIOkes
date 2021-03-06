

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


# TEST METHOD

assertEqual := method(actual,expected,
	result := ""
	if(actual == expected, result = "[32mSUCCESS: expected " .. actual .. " to equal " .. expected .. "[0m" , result = "[31m FAILURE: expected: " .. expected .. " but got: " .. actual .. "[0m")
	result println
)

It := Object clone do (	
	bike1 := Bike clone
	"bike should equal bike" println
	assertEqual(bike1 type, "Bike")
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	"bikes are not broken by default" println
	assertEqual(bike1 isBroken, false)
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	bike1 break
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, true)
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	bike2 := Bike clone
	bike1 break
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, true)
	assertEqual(bike2 isBroken, false)
	"" println
)


It := Object clone do (
	bike1 := Bike clone
	bike1 break
	bike1 fix
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, false)
	"" println
)