class FollowsController < ApplicationController
  def create
    follow = Follow.new
    follow.user_id = current_user.id
    follow.follows = params[:user_id]
    follow.save
    redirect_to follows_path
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
    redirect_to follows_path
  end

  def index
    @users = User.all
  end
end
