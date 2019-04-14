class FeedUserSerializer < ActiveModel::Serializer
  attributes :id, :username, :feed_id, :user_id
end
