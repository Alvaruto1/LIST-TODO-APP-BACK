class List
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :items
  belongs_to :group_list
  field :title, type: String
end
