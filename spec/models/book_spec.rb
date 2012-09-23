#spec/models/book_spec.rb

require 'spec_helper'

describe Book do
  before :each do
    @book = FactoryGirl.create :book
  end
  it "has a valid factory" do
   expect(@book).to be_valid
  end
  it "is invalid without a name"
  it "is invalid without a descriptioncc"
  it "is invalid without an author "
end
