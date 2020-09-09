class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,   null: false 
      t.string :images
      t.body :text,   null: false
      t.area :string,   null: false
      t.level :string
      t.references :user, foreign_key: true,  null: false
      t.references :category, foreign_key: true,  null: false
      t.timestamps
    end
  end
end
