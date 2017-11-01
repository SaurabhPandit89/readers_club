class ReadersGroupsController < InheritedResources::Base

  private

    def readers_group_params
      params.require(:readers_group).permit(:name, :description)
    end
end

