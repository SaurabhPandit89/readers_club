class GenresController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def genre_params
      params.require(:genre).permit(:name, :description)
    end
end

