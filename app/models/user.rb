class User < ApplicationRecord
  has_many :watchlists
  has_many :posts
  validates :username, uniqueness: true
  has_secure_password
end
