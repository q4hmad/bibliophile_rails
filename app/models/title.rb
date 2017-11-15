class Title < ActiveRecord::Base
  belongs_to :category
  validates :name, :presence => true
  validates :author, :presence => true
end
