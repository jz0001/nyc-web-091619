class AppearanceSerializer < ActiveModel::Serializer
  attributes :title
  belongs_to :celebrity
end
