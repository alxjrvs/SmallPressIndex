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

  end

  it "shows the right authors" do
    b = FactoryGirl.create :book
    a = FactoryGirl.create :author  
    b.authors << a
    expect(b.authors).to eq([a])
  end

end
