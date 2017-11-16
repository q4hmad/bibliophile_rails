class Category < ActiveRecord::Base
  belongs_to :book, optional: true
  has_many :titles
  validates :name, :presence => true

end
