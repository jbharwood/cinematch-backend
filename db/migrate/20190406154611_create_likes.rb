class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.belongs_to :feed, foreign_key: true

      t.timestamps
    end
  end
end
