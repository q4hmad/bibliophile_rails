class Title < ActiveRecord::Base
  belongs_to :category, optional: true
  validates :name, :presence => true
  validates :author, :presence => true
end
