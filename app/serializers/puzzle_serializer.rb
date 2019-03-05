class PuzzleSerializer < ActiveModel::Serializer
  belongs_to :image
  attributes :id, :tiles, :image_id, :complete
end
