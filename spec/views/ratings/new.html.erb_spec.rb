require 'rails_helper'

RSpec.describe "ratings/new", type: :view do
  before(:each) do
    assign(:rating, Rating.new(
      :rating_number => 1,
      :rating_text => "MyString"
    ))
  end

  it "renders new rating form" do
    render

    assert_select "form[action=?][method=?]", ratings_path, "post" do

      assert_select "input[name=?]", "rating[rating_number]"

      assert_select "input[name=?]", "rating[rating_text]"
    end
  end
end
