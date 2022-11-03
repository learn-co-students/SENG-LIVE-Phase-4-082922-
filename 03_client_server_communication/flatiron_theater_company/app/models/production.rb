class Production < ApplicationRecord
    validates_presence_of :title, :genre, :budget, :image, :director, :description
    validates :title, uniqueness: true, length:{maximum:40}
    validates :budget, numericality: {greater_than:0}
    validates :description, length: { in: 3...500}
    validates :genre, exclusion: { in: %w(musical Musical MUSICAL), message: "Sorry, that genre is not approved"}

end
