class Book < ApplicationRecord
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.string :profile_image

      t.timestamps
    end
  end

  belongs_to :user

  attachment :profile_image

  validates :title, presence: true
  validates :body, presence: true, length: {maximum: 200}
end
