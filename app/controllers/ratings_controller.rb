class RatingsController < InheritedResources::Base

  private

    def rating_params
      params.require(:rating).permit(:rating_number, :rating_text)
    end
end

