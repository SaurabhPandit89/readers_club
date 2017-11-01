require 'rails_helper'

RSpec.describe "readers_group_members/index", type: :view do
  before(:each) do
    assign(:readers_group_members, [
      ReadersGroupMember.create!(
        :readers_group => nil,
        :user => nil,
        :role => nil
      ),
      ReadersGroupMember.create!(
        :readers_group => nil,
        :user => nil,
        :role => nil
      )
    ])
  end

  it "renders a list of readers_group_members" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
