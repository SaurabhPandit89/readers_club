require 'rails_helper'

RSpec.describe "readers_group_members/edit", type: :view do
  before(:each) do
    @readers_group_member = assign(:readers_group_member, ReadersGroupMember.create!(
      :readers_group => nil,
      :user => nil,
      :role => nil
    ))
  end

  it "renders the edit readers_group_member form" do
    render

    assert_select "form[action=?][method=?]", readers_group_member_path(@readers_group_member), "post" do

      assert_select "input[name=?]", "readers_group_member[readers_group_id]"

      assert_select "input[name=?]", "readers_group_member[user_id]"

      assert_select "input[name=?]", "readers_group_member[role_id]"
    end
  end
end
