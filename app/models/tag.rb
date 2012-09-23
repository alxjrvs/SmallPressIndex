class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :book_tags
  has_many :comics, :through => :book_tags

end

