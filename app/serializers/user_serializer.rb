class UserSerializer < ActiveModel::Serializer
  has_many :scores
  attributes :id, :username,:avatar
end
