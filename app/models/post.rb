class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :upvotes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true

  def vote_score
    upvotes.count - downvotes.count
  end

end
