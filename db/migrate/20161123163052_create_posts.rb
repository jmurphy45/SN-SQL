class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :post_text

      t.timestamps null: false
    end
  end
end
