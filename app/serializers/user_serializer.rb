class UserSerializer < ActiveModel::Serializer
  has_many :puzzles
  has_many :scores
  attributes :id, :username, :password, :avatar, :score_id
end
