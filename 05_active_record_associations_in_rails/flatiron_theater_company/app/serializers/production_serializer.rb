class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :budget, :image, :director, :ongoing
  has_many :cast_members

  def budget
    "$ #{'%.2f' % object.budget}"
  end 
end
