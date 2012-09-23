#spec/models/author_spec.rb

require 'spec_helper'

describe Author do
  it "has a valid factory" do
    expect(FactoryGirl.create(:author)).to be_valid
  end
  it "is invalid without a name" do 
    expect(FactoryGirl.build(:author, name: nil)).to_not be_valid


  end
end
