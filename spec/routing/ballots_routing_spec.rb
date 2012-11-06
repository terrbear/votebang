require "spec_helper"

describe BallotsController do
  describe "routing" do

    it "routes to #index" do
      get("/ballots").should route_to("ballots#index")
    end

    it "routes to #new" do
      get("/ballots/new").should route_to("ballots#new")
    end

    it "routes to #show" do
      get("/ballots/1").should route_to("ballots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ballots/1/edit").should route_to("ballots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ballots").should route_to("ballots#create")
    end

    it "routes to #update" do
      put("/ballots/1").should route_to("ballots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ballots/1").should route_to("ballots#destroy", :id => "1")
    end

  end
end
