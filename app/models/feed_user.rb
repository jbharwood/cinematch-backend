class FeedUser < ApplicationRecord
  validates :username, uniqueness: true
end
