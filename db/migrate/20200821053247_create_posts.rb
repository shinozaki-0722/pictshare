class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
