class Post < ApplicationRecord
  # validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :likes,dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  def self.search(search)
    return Post.all unless search
    Post.where('team LIKE(?)', "%#{search}%")
  end
end
