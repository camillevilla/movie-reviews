class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :comments
  has_many :votes

  def score
    if down_vote_sum == 0
      down_vote_value = 1
    else
      down_vote_value = self.down_vote_sum
    end
    ratio = self.up_vote_sum / down_vote_value
    ratio ** 2
  end

  def up_vote_sum
    upvotes_array = votes.map(&:up_vote_value)
    sum = upvotes_array.reduce(:+)
    if sum == nil
      return 0
    else
      return sum
    end
  end

  def down_vote_sum
    downvotes_array = votes.map(&:down_vote_value)
    sum = downvotes_array.reduce(:+)
    if sum == nil
      return 0
    else
      return sum
    end
  end

end
