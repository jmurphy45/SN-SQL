class UsersController < ApplicationController
  def index
  end
  def show
    @user = User.find(params[:id])
    @users = User.all
  end
end
