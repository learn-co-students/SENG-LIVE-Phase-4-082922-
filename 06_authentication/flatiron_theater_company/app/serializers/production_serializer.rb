class ProductionSerializer < ActiveModel::Serializer
  attributes :id,:title, :genre, :description, :image, :director, :ongoing, :budget
  has_many :cast_members
end
