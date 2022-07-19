class State
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  has_many :items, inverse_of: :state
  
end
