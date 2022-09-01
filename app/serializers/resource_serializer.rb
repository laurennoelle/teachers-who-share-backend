class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :grade, :image
end
