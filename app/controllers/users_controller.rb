class UsersController < ApplicationController
  def index
    @users = User.all
    @users = @users.where("first_name LIKE :name OR last_name LIKE :name OR username LIKE :name", name: "%#{params[:search_term]}%")
  end
end
