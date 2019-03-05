class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :time, :puzzle_id,:current
end
