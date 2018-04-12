class UsersController < ApplicationController
  def index
    @users = User.all
    @users = @users.where("first_name LIKE :name OR last_name LIKE :name OR username LIKE :name", name: "%#{params[:search_term]}%")
  end

  def friends
    @requested_friends = current_user.requested_friends
    @pending_friends = current_user.pending_friends
    @friends = current_user.friends
  end

  def request_friendship
    user = User.find(params[:user_id])
    if current_user.friend_request(user)
      flash[:success] = 'Friend request sent successfully.'
    else
      flash[:error] = 'Failed to send friend request. Please try again.'
    end
    render :response, locals: { user: user }
  end

  def cancel_friend_request
    user = User.find(params[:user_id])
    if current_user.remove_friend(user)
      flash[:success] = 'Friend request cancelled successfully.'
    else
      flash[:error] = 'Failed to cancel friend request. Please try again.'
    end
    render :response, locals: { user: user }
  end

  def accept_friendship
    user = User.find(params[:user_id])
    if current_user.accept_request(user)
      flash[:success] = 'Friend request accepted successfully.'
    else
      flash[:error] = 'Failed to accept friend request. Please try again.'
    end
    render :response, locals: { user: user }
  end

  def decline_friendship
    user = User.find(params[:user_id])
    if current_user.decline_request(user)
      flash[:success] = 'Friend request declined successfully.'
    else
      flash[:error] = 'Failed to decline friend request. Please try again.'
    end
    render :response, locals: { user: user }
  end

  def unfriend
    user = User.find(params[:user_id])
    if current_user.remove_friend(user)
      flash[:success] = 'Friend removed successfully.'
    else
      flash[:error] = 'Failed to remove friend request. Please try again.'
    end
    render :response, locals: { user: user }
  end
end
