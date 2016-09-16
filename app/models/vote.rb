class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :review

  def upvote
    self.up_vote_value += 1
  end

  def downvote
    self.down_vote_value += 1
  end
end
