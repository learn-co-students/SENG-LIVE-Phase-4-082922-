class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :user
  has_one :production

  def price
    "$#{'%.2f' % object.price}"
  end 
end
