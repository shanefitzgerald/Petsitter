class PetInfo
  include Mongoid::Document
  field :pet_name, type: String
  field :pet_age, type: String
  field :pet_breed, type: String
  field :chip_number, type: Integer
  field :tag_number, type: Integer
  field :vet_name, type: String
  field :vet_address, type: String
  field :vet_phone, type: Integer
  field :key_location, type: String
  field :food_brand, type: String
  field :food_location, type: String
  field :feeding_time, type: Float
  field :special_feeding_instruction, type: String
  field :walking_times, type: Float
  field :walking_route_directions, type: String
  field :water_instructions, type: String
  field :special_instructions, type: String
  field :medicine_location, type: String
  field :emergency_contact_number, type: Integer

  embedded_in :petowner
end


