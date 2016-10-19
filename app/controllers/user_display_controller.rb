class UserDisplayController < ApplicationController
  def index
    @users = User.all
    render 'socail_network/user_display/display'
  end

  def follow(user)
    @user = current_user
    if @user.follows?(user)
      return true
    else
      return false
    end
  end
end
