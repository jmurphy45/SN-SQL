class UsersController < ApplicationController
  def index
  end
  def show
    @user = User.find(params[:id])
    @users = User.all
    @posts = Post.where(user_id: current_user.id)
  end
end
