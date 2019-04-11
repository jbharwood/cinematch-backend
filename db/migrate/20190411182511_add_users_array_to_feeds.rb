class AddUsersArrayToFeeds < ActiveRecord::Migration[5.1]
  def change
    add_column :feeds, :users, :string, array: true, default: []
  end
end
