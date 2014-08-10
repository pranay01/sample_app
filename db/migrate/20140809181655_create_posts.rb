class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :source
      t.string :username
      t.string :image_url
      t.string :local_add
      t.string :brand
      t.boolean :processed

      t.timestamps
    end
  end
end
