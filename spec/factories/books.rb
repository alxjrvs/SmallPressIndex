#spec/factories/books.rb

FactoryGirl.define do
  factory :book do
    name RandomWord.adjs.next.capitalize
    description "The Stunning Conclusion to the recent arc!"
    factory :book_with_author
      after(:build) do |book|
        book.authors << FactoryGirl.build(:author)
    end
  end
end
