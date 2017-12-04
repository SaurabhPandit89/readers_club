class GenresController < InheritedResources::Base
  private

    def genre_params
      params.require(:genre).permit(:name, :description)
    end
end

