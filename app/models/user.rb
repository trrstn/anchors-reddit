class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :upvotes
  has_secure_password
  validates :first_name, presence: true, length: { minimum: 3 }
  validates :last_name, presence: true, length: { minimum: 3 }
  validates :user_name, presence: true, uniqueness: true, length: { in: 6..20 }
  validates :password, presence: true, length: { in: 8..20 }
  validates :email, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def current_vote(post)
    @upvote = post.upvotes.find_by(user: id)
  end

end
