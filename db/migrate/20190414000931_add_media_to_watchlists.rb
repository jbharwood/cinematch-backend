class AddMediaToWatchlists < ActiveRecord::Migration[5.1]
  def change
    add_column :watchlists, :media, :string
  end
end
