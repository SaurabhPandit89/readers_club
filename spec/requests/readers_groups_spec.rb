require 'rails_helper'

RSpec.describe "ReadersGroups", type: :request do
  describe "GET /readers_groups" do
    it "works! (now write some real specs)" do
      get readers_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
