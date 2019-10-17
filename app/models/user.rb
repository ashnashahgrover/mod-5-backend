class User < ApplicationRecord
  has_secure_password
  has_many :poems
  validates :name, uniqueness: true

  #need to find a way to make a validation so that the name is unique


end
