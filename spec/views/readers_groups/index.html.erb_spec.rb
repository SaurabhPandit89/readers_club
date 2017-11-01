require 'rails_helper'

RSpec.describe "readers_groups/index", type: :view do
  before(:each) do
    assign(:readers_groups, [
      ReadersGroup.create!(
        :name => "Name",
        :description => "Description"
      ),
      ReadersGroup.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of readers_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
