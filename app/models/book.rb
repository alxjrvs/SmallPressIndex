class Book < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :book_tags
  has_many :tags, :through => :book_tags
  has_many :author_books
  has_many :authors, :through => :author_books
  validates :name, :presence => true
  validates :description, :presence => true
end
