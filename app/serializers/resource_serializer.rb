class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :grade, :image, :description, :reviews
end
