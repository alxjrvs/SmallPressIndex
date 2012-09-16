require 'spec_helper'

describe "TagRelations" do
  describe "GET /tag_relations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tag_relations_path
      response.status.should be(200)
    end
  end
end
