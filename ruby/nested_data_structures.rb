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

puts "add population key with value to Machine Area hash"
	hour_fitness[:Machine_Area][:Population] = 88
p hour_fitness


puts "**********************"
puts "Push string to Equipment Array at Front Desk"
	hour_fitness[:Front_Desk][:Equipment].push("Membership Database Software")
p hour_fitness

puts "**********************"
puts "replace entire Locker_Room hash with Cleanliness: 'Low'"
	hour_fitness[:Locker_Room].replace({:Cleanliness => "Low"})
p hour_fitness

puts "**********************"
puts "Delete key/value for Employees hash in Spinning_Room if not equal to Cleaners"
	hour_fitness[:Spinning_Room][:Employees].delete_if {|type,num| type != :Cleaners}
p hour_fitness

puts "**********************"
puts "Select and return employee entries greater than 0 for Front_Desk"
	hour_fitness[:Front_Desk][:Employees].select! {|type,num| num > 0}
p hour_fitness


