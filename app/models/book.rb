class Book < ActiveRecord::Base
  validates :genre, :presence => true
end
