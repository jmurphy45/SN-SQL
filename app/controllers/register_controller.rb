class RegisterController < ApplicationController

  def register
    @user = User.new
    render "users/registrations/new"
  end
end
