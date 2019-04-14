class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :feed_id, :user_id, :omdb_id, :imdb_id, :media, :user, :date

  def date
   return  object.created_at.in_time_zone('Eastern Time (US & Canada)').strftime("%I:%M %p - %m.%d.%Y")
  end

  def user
    object.user
  end

end
