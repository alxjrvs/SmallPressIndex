class Tag < ActiveRecord::Base
  attr_accessor :name
  has_many :book_tags
  has_many :comics, :through => :book_tags

end

