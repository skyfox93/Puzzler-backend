class PuzzleSerializer < ActiveModel::Serializer
  has_many :scores
  has_many :users
  attributes :id, :imageUrl, :score_id
end