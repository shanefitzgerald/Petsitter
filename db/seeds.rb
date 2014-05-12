# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

petinfos = PetInfo.create([{pet_name: 'Maddie', 
							pet_age: '10', 
							pet_breed: 'maltease', 
							chip_number: '123456', 
							tag_number: '654321', 
							vet_name: 'sammy', 
							vet_address: '123 Vet drive', 
							vet_phone: '3034567890', 
							key_location: 'under mat', 
							food_brand: 'the good stuff', 
							food_location: 'by the sink', 
							feeding_time: '5', 
							special_feeding_instruction: 'none', 
							walking_times: '6', 
							walking_route_directions: 'can I get a google api here?', 
							water_instructions: 'only bottled water', 
							special_instructions: 'none', 
							medicine_location: 'by the sink', 
							emergency_contact_number: '2333456789'}])