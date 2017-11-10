class ReadersGroupMembersController < InheritedResources::Base
  layout 'layouts/admin'
  private

    def readers_group_member_params
      params.require(:readers_group_member).permit(:readers_group_id, :user_id, :role_id)
    end
end

