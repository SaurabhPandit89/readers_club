require 'rails_helper'

RSpec.describe "readers_groups/edit", type: :view do
  before(:each) do
    @readers_group = assign(:readers_group, ReadersGroup.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit readers_group form" do
    render

    assert_select "form[action=?][method=?]", readers_group_path(@readers_group), "post" do

      assert_select "input[name=?]", "readers_group[name]"

      assert_select "input[name=?]", "readers_group[description]"
    end
  end
end
