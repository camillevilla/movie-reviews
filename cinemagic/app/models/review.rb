class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :comments
  has_many :votes

  def up_vote_sum
    upvotes_array = self.votes.map(&:upvote)
    upvotes_array.reduce(:+)
  end


end
