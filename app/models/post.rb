# Post
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  has_many :upvotes, dependent: :destroy
  validates :title, presence: true
  :body
  :link

  def vote_score
    upvotes.count
  end
end
