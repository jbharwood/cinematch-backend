class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :feed_id, :user_id, :omdb_id, :imdb_id, :user

  def user
    object.user
  end

end
