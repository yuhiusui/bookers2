class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }

  has_many :books, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :following_relationships, foreign_key: "follower_id",
                                     class_name: "Relationship",
                                     dependent: :destroy
  has_many :follower_relationships, foreign_key: "following_id",
                                    class_name: "Relationship",
                                    dependent: :destroy
  has_many :followings, through: :following_relationships
  has_many :followers, through: :follower_relationships

  attachment :profile_image


  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

  def self.search(search, word)
    if search == "perfect_match"
      @user = User.where(name: "#{word}")
    elsif search == "partial_match"
      @user = User.where("name LIKE?","%#{word}%")
    elsif search == "forward_match"
      @user = User.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @user = User.where("name LIKE?","%#{word}")
    else
      @user = User.all
    end
  end
end
