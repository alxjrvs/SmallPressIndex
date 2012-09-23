class Author < ActiveRecord::Base
  attr_accessor :name, :website
  has_many :author_books
  has_many :comics, :through => :author_books

end
