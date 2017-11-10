class RolesController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def role_params
      params.require(:role).permit(:name, :description)
    end
end

