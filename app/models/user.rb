class User < ActiveRecord::Base

has_many :recipes_users
has_many :recipes through :recipes_users

validates :email, presence: true, uniqueness: true
has_secure_password
end
