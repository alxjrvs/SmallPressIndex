require "spec_helper"

describe TagRelationsController do
  describe "routing" do

    it "routes to #index" do
      get("/tag_relations").should route_to("tag_relations#index")
    end

    it "routes to #new" do
      get("/tag_relations/new").should route_to("tag_relations#new")
    end

    it "routes to #show" do
      get("/tag_relations/1").should route_to("tag_relations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tag_relations/1/edit").should route_to("tag_relations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tag_relations").should route_to("tag_relations#create")
    end

    it "routes to #update" do
      put("/tag_relations/1").should route_to("tag_relations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tag_relations/1").should route_to("tag_relations#destroy", :id => "1")
    end

  end
end
