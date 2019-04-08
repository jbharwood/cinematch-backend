class Post < ApplicationRecord
  belongs_to :feed, optional: true
  belongs_to :user
  has_many :likes, dependent: :destroy
end
