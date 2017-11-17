class Category < ActiveRecord::Base
  belongs_to :book, optional: true
  has_many :titles
  validates :name, :presence => true

  scope :most_titles, -> {(
    select("categories.id, categories.name count(titles.id) as titles_count")
    .joins(:titles)
    .group("categories.id")
    .order("titles_count DESC")
    .limit(10)
    )}
end
