class Movie < ApplicationRecord
  has_many :reviews
  has_many :assignedgenres
  has_many :genres, through: :assignedgenres
end
