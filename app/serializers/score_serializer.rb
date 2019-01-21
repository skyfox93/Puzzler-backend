class ScoreSerializer < ActiveModel::Serializer
  belongs_to :puzzle
  belongs_to :user
  attributes :id, :game_score, :puzzle_id, :user_id
end