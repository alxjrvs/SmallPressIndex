require 'spec_helper'

describe "tag_relations/new" do
  before(:each) do
    assign(:tag_relation, stub_model(TagRelation).as_new_record)
  end

  it "renders new tag_relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tag_relations_path, :method => "post" do
    end
  end
end
