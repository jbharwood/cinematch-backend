class FeedSerializer < ActiveModel::Serializer
  attributes :id, :name, :users

  # def users
  #   object.posts.map do |post|
  #     post.user
  #   end
  # end

end
