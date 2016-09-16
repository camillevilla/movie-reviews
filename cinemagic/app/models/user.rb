class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews
  has_many :comments

  def trusted_reviewer_score
    upvotes_array = self.reviews.map(&:up_vote_sum)
    upvote_sum = upvotes_array.reduce(:+)
    Math.log(upvote_sum, Math::E)
  end

  def trusted_reviewer?
    self.trusted_reviewer_score > 3
  end

end

