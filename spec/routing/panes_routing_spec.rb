require "spec_helper"

describe PanesController do
  describe "routing" do

    it "routes to #index" do
      get("/panes").should route_to("panes#index")
    end

    it "routes to #new" do
      get("/panes/new").should route_to("panes#new")
    end

    it "routes to #show" do
      get("/panes/1").should route_to("panes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/panes/1/edit").should route_to("panes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/panes").should route_to("panes#create")
    end

    it "routes to #update" do
      put("/panes/1").should route_to("panes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/panes/1").should route_to("panes#destroy", :id => "1")
    end

  end
end
