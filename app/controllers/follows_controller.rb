class FollowsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to root_path
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
  end
  def index
    @users = User.all
  end
end
