class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :watchlist

  def watchlist
    object.watchlists.map do |movie|
      movie
    end
  end

end
