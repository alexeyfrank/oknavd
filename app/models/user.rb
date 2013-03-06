class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password

  validates :email, presence: true, email: true, length: { maximum: 255 }
  validates :password, presence: true, length: { maximum: 255 }
end
