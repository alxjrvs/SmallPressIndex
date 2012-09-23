#spec/models/book_spec.rb

require 'spec_helper'

describe Book do
  it "has a valid factory" do
   expect(FactoryGirl.create :book).to be_valid
  end
  context "is invalid " do
    it " without a name" do
        expect(FactoryGirl.build :book, name: nil).to_not be_valid
    end
    it "without a description" do
        expect(FactoryGirl.build :book, name: nil).to_not be_valid
    end
    it "with two identical entries (name and author)"
      author = FactoryGirl.create :author
      book1 = FactoryGirl.create :book, name: "Ajar", author: author
      expect(FactoryGirl.build :book, name: "Ajar", author: author)
  end
  it "is invalid without an author "
end
