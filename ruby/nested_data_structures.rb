hour_fitness = {
	
	Front_Desk: {
		Size: "small",
		Sanitation_Level: "high",
		Employees: {
			Customer_Service: 3,
			Cleaners: 0
		},

		Towels: {
			Clean: 25,
			Dirty: 0
		},

		Equipment: [
			"finger scanner",
			"Code Keypad Machine"
		]
	},

	Locker_Room: {
		Size: "medium",
		Sanitation_Level: "medium",
		Employees: {
			Customer_Service: 0,
			Cleaners: 3
		},

		Towels: {
			Clean: 5,
			Dirty: 8
		},

		Equipment: [
			"Lockers",
			"Combinations Locks"
		]

	},

	Spinning_Room: {
		Size: "medium",
		Sanitation_Level: "sweaty",
		Employees: {
			Customer_Service: 0,
			Cleaners: 2
		},

		Towels: {
			Clean: 3,
			Dirty: 10
		},

		Equipment: [
			"Spinning bike machines",
			"Light freeweights"
		]
	},

	Machine_Area: {
		Size: "Large",
		Sanitation_Level: "sweaty",
		Employees: {
			Customer_Service: 3,
			Cleaners: 7
		},

		Towels: {
			Clean: 3,
			Dirty: 25
		},

		Equipment: [
			"Weight machines",
			"Light freeweights",
			"TRX",
			"Heavy freeweights"
		]
	}
}



p hour_fitness
puts "**********************"
puts "Push all this stuff"
	hour_fitness[:Front_Desk].push("blah")
p hour_fitness
