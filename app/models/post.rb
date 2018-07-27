# Post
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  has_many :upvotes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  validates :title, presence: true

  def vote_score
    upvotes.count - downvotes.count
  end

  def points
    if vote_score == 1
      "#{vote_score}" + " point"
    else
      "#{vote_score}" + " points"
    end
  end

  def scrape(link)
    MetaInspector.new(link)
  end
end
