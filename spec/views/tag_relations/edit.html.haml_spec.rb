require 'spec_helper'

describe "tag_relations/edit" do
  before(:each) do
    @tag_relation = assign(:tag_relation, stub_model(TagRelation))
  end

  it "renders the edit tag_relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tag_relations_path(@tag_relation), :method => "post" do
    end
  end
end
