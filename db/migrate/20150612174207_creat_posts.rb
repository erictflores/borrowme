class CreatPosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.integer :category_id

      t.timestamps
    end
  end
end
