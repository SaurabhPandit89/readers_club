class BookRatingsController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def book_rating_params
      params.require(:book_rating).permit(:rating_comment, :book_id, :user_id, :rating_id)
    end
end