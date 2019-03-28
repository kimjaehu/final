class User < ApplicationRecord

  has_secure_password
  has_many :carrers
  has_many :educations

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

end
