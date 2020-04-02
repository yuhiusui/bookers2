class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :name
      t.string :profile_image_id
      t.text :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
