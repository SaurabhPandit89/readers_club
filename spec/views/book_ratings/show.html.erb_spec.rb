require 'rails_helper'

RSpec.describe "book_ratings/show", type: :view do
  before(:each) do
    @book_rating = assign(:book_rating, BookRating.create!(
      :rating_comment => "Rating Comment",
      :book => nil,
      :user => nil,
      :rating => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rating Comment/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
