require 'spec_helper'

describe "tag_relations/index" do
  before(:each) do
    assign(:tag_relations, [
      stub_model(TagRelation),
      stub_model(TagRelation)
    ])
  end

  it "renders a list of tag_relations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
