class RatingsController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def rating_params
      params.require(:rating).permit(:rating_number, :rating_text)
    end
end

