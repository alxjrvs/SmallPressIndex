require 'spec_helper'

describe "tag_relations/show" do
  before(:each) do
    @tag_relation = assign(:tag_relation, stub_model(TagRelation))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
