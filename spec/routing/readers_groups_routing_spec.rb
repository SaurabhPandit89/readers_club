require "rails_helper"

RSpec.describe ReadersGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/readers_groups").to route_to("readers_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/readers_groups/new").to route_to("readers_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/readers_groups/1").to route_to("readers_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/readers_groups/1/edit").to route_to("readers_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/readers_groups").to route_to("readers_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/readers_groups/1").to route_to("readers_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/readers_groups/1").to route_to("readers_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/readers_groups/1").to route_to("readers_groups#destroy", :id => "1")
    end

  end
end
