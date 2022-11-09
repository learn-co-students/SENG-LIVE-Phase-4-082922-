class Production < ApplicationRecord
    has_many :cast_members
    has_many :tickets
    has_many :users, through: :tickets

    validates_presence_of :title, :genre, :budget, :image, :director, :description
    validates :title, uniqueness: true, length:{maximum:40}
    validates :budget, numericality: {greater_than:0}
    validates :description, length: { in: 3...500}

    validate :genre, :no_more_musicals

    def no_more_musicals
        if self.genre == 'Musical' && Production.where(ongoing:true, genre:'Musical').length > 0
            errors.add(:genre, "Sorry only 1 musical at a time")
        end 
    end 

end
