class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at, :image
end
