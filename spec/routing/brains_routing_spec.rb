require "spec_helper"

describe BrainsController do
  describe "routing" do

    it "routes to #index" do
      get("/brains").should route_to("brains#index")
    end

    it "routes to #new" do
      get("/brains/new").should route_to("brains#new")
    end

    it "routes to #show" do
      get("/brains/1").should route_to("brains#show", :id => "1")
    end

    it "routes to #edit" do
      get("/brains/1/edit").should route_to("brains#edit", :id => "1")
    end

    it "routes to #create" do
      post("/brains").should route_to("brains#create")
    end

    it "routes to #update" do
      put("/brains/1").should route_to("brains#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/brains/1").should route_to("brains#destroy", :id => "1")
    end

  end
end
