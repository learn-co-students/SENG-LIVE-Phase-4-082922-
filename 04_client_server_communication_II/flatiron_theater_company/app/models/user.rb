class User < ApplicationRecord
    validates_presence_of :name, :email
    validates :name, uniqueness: true, length:{in: 3..25}
    validates :email, uniqueness: true

end
