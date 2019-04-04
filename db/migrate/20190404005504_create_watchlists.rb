class CreateWatchlists < ActiveRecord::Migration[5.1]
  def change
    create_table :watchlists do |t|
      t.string :title
      t.integer :omdb_id
      t.string :imdb_id

      t.timestamps
    end
  end
end
