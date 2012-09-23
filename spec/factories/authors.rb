#spec/factories/authors.rb
require 'faker'

FactoryGirl.define do
  factory :author do
    website { Faker::Internet.domain_name }
    name "#{ Faker::Name.first_name } #{ Faker::Name.last_name }"
    factory :author_with_books do
      after(:build) do |author|
        3.times do
          author.books << FactoryGirl.build(:book)
        end
      end
    end
  end
end
