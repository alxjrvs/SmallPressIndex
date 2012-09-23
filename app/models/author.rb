class Author < ActiveRecord::Base
  attr_accessible :name, :website
  has_many :author_books
  has_many :comics, :through => :author_books
  validates :name, :presence => true, :uniqueness => true
end
