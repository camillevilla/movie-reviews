class User < ApplicationRecord
  has_many :reviews

  def trusted_user_ranking
    upvote_array = self.reviews.map(&:up_vote_sum)
    upvotes_array.reduce(:+)
  end
end
