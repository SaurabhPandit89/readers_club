require 'rails_helper'

RSpec.describe "BookRatings", type: :request do
  describe "GET /book_ratings" do
    it "works! (now write some real specs)" do
      get book_ratings_path
      expect(response).to have_http_status(200)
    end
  end
end
