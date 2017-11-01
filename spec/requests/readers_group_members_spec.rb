require 'rails_helper'

RSpec.describe "ReadersGroupMembers", type: :request do
  describe "GET /readers_group_members" do
    it "works! (now write some real specs)" do
      get readers_group_members_path
      expect(response).to have_http_status(200)
    end
  end
end
