class ProfileController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find_by(username: params[:username])
    render 'socail_network/profile/profile'
  end
end
