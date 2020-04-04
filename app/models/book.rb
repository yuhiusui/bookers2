class Book < ApplicationRecord
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.string :profile_image

      t.timestamps
    end
  end
end
