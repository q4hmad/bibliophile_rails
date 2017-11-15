class Category < ActiveRecord::Base
  belongs_to :book
  has_many :titles
  validates :name, :presence => true
end
