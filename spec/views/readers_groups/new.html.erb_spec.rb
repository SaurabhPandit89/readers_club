require 'rails_helper'

RSpec.describe "readers_groups/new", type: :view do
  before(:each) do
    assign(:readers_group, ReadersGroup.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new readers_group form" do
    render

    assert_select "form[action=?][method=?]", readers_groups_path, "post" do

      assert_select "input[name=?]", "readers_group[name]"

      assert_select "input[name=?]", "readers_group[description]"
    end
  end
end
