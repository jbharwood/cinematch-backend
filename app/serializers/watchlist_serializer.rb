class WatchlistSerializer < ActiveModel::Serializer
  attributes :id, :title, :omdb_id, :imdb_id
end
