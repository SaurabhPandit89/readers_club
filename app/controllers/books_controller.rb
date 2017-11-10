class BooksController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def book_params
      params.require(:book).permit(:name, :description)
    end
end

