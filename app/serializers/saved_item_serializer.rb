class SavedItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :grade, :description, :reviews, :image
end
