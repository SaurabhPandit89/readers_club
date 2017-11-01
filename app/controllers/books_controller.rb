class BooksController < InheritedResources::Base

  private

    def book_params
      params.require(:book).permit(:name, :description)
    end
end

