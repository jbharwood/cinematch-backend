class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :feed_id, :user_id, :user

  def user
    object.user
  end

end
