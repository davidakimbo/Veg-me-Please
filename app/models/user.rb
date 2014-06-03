class User < ActiveRecord::Base
  has_many :favorites
  has_many :users, :through => :favorites

  validates :email, presence: true, uniqueness: true
  has_secure_password
end
