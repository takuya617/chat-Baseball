class Post < ApplicationRecord
  # validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    return Post.all unless search
    Post.where('team LIKE(?)', "%#{search}%")
  end
end
