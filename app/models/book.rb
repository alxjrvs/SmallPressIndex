class Book < ActiveRecord::Base
  attr_accessible :author_name, :author_url, :description, :image, :name
end
