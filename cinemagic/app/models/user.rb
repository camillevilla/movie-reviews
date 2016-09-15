class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :reviews
  has_many :comments

  def trusted_user_ranking
    upvote_array = self.reviews.map(&:up_vote_sum)
    upvotes_array.reduce(:+)
  end

end

