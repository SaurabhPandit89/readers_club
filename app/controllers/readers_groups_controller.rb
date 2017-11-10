class ReadersGroupsController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def readers_group_params
      params.require(:readers_group).permit(:name, :description)
    end
end

