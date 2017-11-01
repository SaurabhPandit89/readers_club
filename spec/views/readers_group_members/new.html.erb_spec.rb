require 'rails_helper'

RSpec.describe "readers_group_members/new", type: :view do
  before(:each) do
    assign(:readers_group_member, ReadersGroupMember.new(
      :readers_group => nil,
      :user => nil,
      :role => nil
    ))
  end

  it "renders new readers_group_member form" do
    render

    assert_select "form[action=?][method=?]", readers_group_members_path, "post" do

      assert_select "input[name=?]", "readers_group_member[readers_group_id]"

      assert_select "input[name=?]", "readers_group_member[user_id]"

      assert_select "input[name=?]", "readers_group_member[role_id]"
    end
  end
end
