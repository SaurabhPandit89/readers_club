require 'rails_helper'

RSpec.describe "book_ratings/new", type: :view do
  before(:each) do
    assign(:book_rating, BookRating.new(
      :rating_comment => "MyString",
      :book => nil,
      :user => nil,
      :rating => nil
    ))
  end

  it "renders new book_rating form" do
    render

    assert_select "form[action=?][method=?]", book_ratings_path, "post" do

      assert_select "input[name=?]", "book_rating[rating_comment]"

      assert_select "input[name=?]", "book_rating[book_id]"

      assert_select "input[name=?]", "book_rating[user_id]"

      assert_select "input[name=?]", "book_rating[rating_id]"
    end
  end
end
