require "rails_helper"

RSpec.describe BookRatingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/book_ratings").to route_to("book_ratings#index")
    end

    it "routes to #new" do
      expect(:get => "/book_ratings/new").to route_to("book_ratings#new")
    end

    it "routes to #show" do
      expect(:get => "/book_ratings/1").to route_to("book_ratings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/book_ratings/1/edit").to route_to("book_ratings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/book_ratings").to route_to("book_ratings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/book_ratings/1").to route_to("book_ratings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/book_ratings/1").to route_to("book_ratings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/book_ratings/1").to route_to("book_ratings#destroy", :id => "1")
    end

  end
end
