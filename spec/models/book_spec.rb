#spec/models/book_spec.rb

require 'spec_helper'

describe Book do

  it "has a valid factory" do
   expect(create :book).to be_valid
  end

  context "is invalid " do

    it " without a name" do
        expect(build :book, name: nil).to_not be_valid
    end

    it "without a description" do
        expect(build :book, name: nil).to_not be_valid
    end

  end

  it "shows the right authors" do
    a = create :book_with_author
    expect(a.authors.size).to eq 1
  end

end
