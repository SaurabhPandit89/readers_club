require "rails_helper"

RSpec.describe ReadersGroupMembersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/readers_group_members").to route_to("readers_group_members#index")
    end

    it "routes to #new" do
      expect(:get => "/readers_group_members/new").to route_to("readers_group_members#new")
    end

    it "routes to #show" do
      expect(:get => "/readers_group_members/1").to route_to("readers_group_members#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/readers_group_members/1/edit").to route_to("readers_group_members#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/readers_group_members").to route_to("readers_group_members#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/readers_group_members/1").to route_to("readers_group_members#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/readers_group_members/1").to route_to("readers_group_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/readers_group_members/1").to route_to("readers_group_members#destroy", :id => "1")
    end

  end
end
