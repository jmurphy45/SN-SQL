class UserDisplayController < ApplicationController
  def index
    @users = User.all
    render 'socail_network/user_display/display'
  end

  def follow(user)
    if current_user.follows?(user)
      return true
    else
      return false
    end
  end
end
