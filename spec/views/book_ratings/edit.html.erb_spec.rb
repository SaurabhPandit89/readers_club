require 'rails_helper'

RSpec.describe "book_ratings/edit", type: :view do
  before(:each) do
    @book_rating = assign(:book_rating, BookRating.create!(
      :rating_comment => "MyString",
      :book => nil,
      :user => nil,
      :rating => nil
    ))
  end

  it "renders the edit book_rating form" do
    render

    assert_select "form[action=?][method=?]", book_rating_path(@book_rating), "post" do

      assert_select "input[name=?]", "book_rating[rating_comment]"

      assert_select "input[name=?]", "book_rating[book_id]"

      assert_select "input[name=?]", "book_rating[user_id]"

      assert_select "input[name=?]", "book_rating[rating_id]"
    end
  end
end
