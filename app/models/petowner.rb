class Petowner
  include Mongoid::Document
  field :name, type: String

  has_many :pet_info
end
