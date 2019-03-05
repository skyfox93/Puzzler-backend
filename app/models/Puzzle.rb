class Puzzle < ApplicationRecord
  has_many :scores
  belongs_to :user
  belongs_to :image
end
