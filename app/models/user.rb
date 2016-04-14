class User < ActiveRecord::Base
  validates :username, presence: true
  validates :password_digest, presence: true 
  validates :password_confirmation, presence: true
  has_many :tools
  has_secure_password
end
