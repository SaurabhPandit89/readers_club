require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        :rating_number => 2,
        :rating_text => "Rating Text"
      ),
      Rating.create!(
        :rating_number => 2,
        :rating_text => "Rating Text"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Rating Text".to_s, :count => 2
  end
end
