class CreateFeedUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :feed_users do |t|
      t.string :username
      t.integer :feed_id
      t.integer :user_id

      t.timestamps
    end
  end
end
