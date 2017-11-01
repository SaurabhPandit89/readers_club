require 'rails_helper'

RSpec.describe "book_ratings/index", type: :view do
  before(:each) do
    assign(:book_ratings, [
      BookRating.create!(
        :rating_comment => "Rating Comment",
        :book => nil,
        :user => nil,
        :rating => nil
      ),
      BookRating.create!(
        :rating_comment => "Rating Comment",
        :book => nil,
        :user => nil,
        :rating => nil
      )
    ])
  end

  it "renders a list of book_ratings" do
    render
    assert_select "tr>td", :text => "Rating Comment".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
