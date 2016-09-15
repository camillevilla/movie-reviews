class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :comments
  has_many :votes
end
