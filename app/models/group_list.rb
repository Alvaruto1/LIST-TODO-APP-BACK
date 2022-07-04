class GroupList
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :color, type: String
  field :can_edit, type: Boolean, default: false
  has_many :lists
  belongs_to :user
  
end
