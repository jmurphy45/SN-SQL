class FollowsController < ApplicationController
  def create
    follow = Follow.new
    follow.user_id = current_user.id
    follow.follows = params[:user_id]
    follow.save
    redirect_to root_path
  end

  def destroy
    #@follow = Follow.where('user_id = ? AND follows = ?',current_user.id,params[:user_id]).first
    @follow = params[:user]
    p "follow to delete "+@follow
    #@follow.destroy
    redirect_to root_path
  end

  def index
    @users = User.all
  end
end
