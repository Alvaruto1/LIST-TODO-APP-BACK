class Item
  include Mongoid::Document
  include Mongoid::Timestamps
  field :description, type: String
  has_one :state
  belongs_to :list
end
