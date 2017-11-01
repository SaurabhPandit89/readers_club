require 'rails_helper'

RSpec.describe "readers_group_members/show", type: :view do
  before(:each) do
    @readers_group_member = assign(:readers_group_member, ReadersGroupMember.create!(
      :readers_group => nil,
      :user => nil,
      :role => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
