#spec/factories/books.rb

FactoryGirl.define do
  factory :book do
    name RandomWord.nouns.next.capitalize
    description "The Stunning Conclusion to the recent arc!"
  end
end
