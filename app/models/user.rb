class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword
  has_secure_password
  field :email, type: String, default: ''
  field :password_digest, type: String, default: ''
  field :username, type: String, default: ''
  has_many :group_lists

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }
end
