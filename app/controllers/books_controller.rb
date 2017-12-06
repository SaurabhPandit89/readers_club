class BooksController < InheritedResources::Base
  # layout 'layouts/admin'
  before_action :authenticate_user!
  private

    def book_params
      params.require(:book).permit(:name, :description)
    end
end