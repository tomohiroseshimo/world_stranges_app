class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,   null: false 
      t.string :images
      t.text :body,   null: false
      t.string :area,   null: false
      t.string :level
      t.timestamps
    end
  end
end
