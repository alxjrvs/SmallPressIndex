#spec/models/author_spec.rb

require 'spec_helper'

describe Author do

  it "has a valid factory" do
    expect(create(:author)).to be_valid
  end

  it "is invalid without a name" do
    expect(build(:author, name: nil)).to_not be_valid
  end

  it "Has the proper number of books" do
    a = create(:author_with_books)
    expect(a.books.size).to eq 3
  end
end
