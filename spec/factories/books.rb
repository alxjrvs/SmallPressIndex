# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    name "MyString"
    image "MyString"
    author_name "MyString"
    author_url "MyString"
    description "MyText"
  end
end
