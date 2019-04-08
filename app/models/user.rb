class User < ApplicationRecord
  has_many :watchlists
  # validates :username, uniqueness: true
  # has_secure_password
end
