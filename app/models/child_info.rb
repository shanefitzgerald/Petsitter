class ChildInfo
  include Mongoid::Document
  field :child_name, type: String
  field :child_age, type: String
  field :contact_one, type: String
  field :contact_two, type: String
  field :emergency_contact, type: String
  field :food_drink_hazzard, type: String
  field :escape_routes, type: String
  field :home_phone, type: String
  field :doctor_phone, type: String
  field :special_information, type: String
  field :neighbor_names, type: String
  field :firstaidkit_location, type: String
  field :circuitbreaker_location, type: String
  field :watershutoff_location, type: String
  field :meal_time, type: String
  field :bed_time, type: String
  field :bedtime_routine, type: String

  embedded_in :user
end
