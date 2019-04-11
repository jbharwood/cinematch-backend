class AddIDsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :omdb_id, :string
    add_column :posts, :imdb_id, :string
  end
end
