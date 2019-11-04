class CelebritySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :age, :likes
  has_many :appearances
end
