class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  field :description, type: String
  belongs_to :list
  belongs_to :state, inverse_of: :items
end
