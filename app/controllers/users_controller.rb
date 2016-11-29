class UsersController < ApplicationController
  def index
  end
  def show
    @user = User.find(params[:id])
    @users = User.all
    @posts = Post.where(user_id: params[:id])
    @who_follows = follows(params[:id])
  end

  def follows(user)
    @follows = Follow.where(user_id: user)
    @who = []
    @follows.each do |f|
      @who.push(User.find(f.follows))
    end
    return @who
  end
end
