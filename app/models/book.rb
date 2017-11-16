class Book < ActiveRecord::Base
  has_many :categories
  has_many :titles, through: :categories
  validates :genre, :presence => true

  scope :ordered_by_genre, -> { order(genre: :asc) }

end
