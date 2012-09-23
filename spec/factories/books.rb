#spec/factories/books.rb

FactoryGirl.define do
  factory :book do
    name RandomWord.adjs.next.capitalize
    description "The Stunning Conclusion to the recent arc!"
  end
end
