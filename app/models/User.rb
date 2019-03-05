class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :puzzles
  has_many :scores, through: :puzzles

  def create_puzzles
    Image.all.each{|image|
    Puzzle.create(image: image, user: self)
  }
  end
end
