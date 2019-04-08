class AddPosterToWatchlist < ActiveRecord::Migration[5.1]
  def change
    add_column :watchlists, :poster, :string
  end
end
