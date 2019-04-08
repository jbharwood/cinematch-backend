class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :title, :omdb_id, :imdb_id, :user_id, :poster

  # def watchlists
  #   object.user.map do |user|
  #     user
  #   end
  # end
end
