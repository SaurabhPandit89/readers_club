require 'rails_helper'

RSpec.describe "readers_groups/show", type: :view do
  before(:each) do
    @readers_group = assign(:readers_group, ReadersGroup.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
