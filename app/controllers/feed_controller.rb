class FeedController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @post = Post.new
    @users = User.all
    @user_post = Post.joins(:user).order(created_at: :desc)
    render 'socail_network/feed/feed'
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post: params[:post][:post], user_id: current_user.id)
    if @post.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
