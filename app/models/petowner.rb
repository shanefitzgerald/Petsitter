class Petowner
  include Mongoid::Document
  field :name, type: String

  embeds_many :pet_info
end
