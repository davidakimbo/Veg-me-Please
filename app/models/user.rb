class User < ActiveRecord::Base
  has_many :favorites
  has_many :recipes, :through => :favorites

  validates :email, presence: true, uniqueness: true
  has_secure_password
end
