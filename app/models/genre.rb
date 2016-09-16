class Genre < ApplicationRecord
  has_many :assignedgenres
  has_many :movies, through: :assignedgenres
end
