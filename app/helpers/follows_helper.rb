module FollowsHelper
  def find_user(user)
    user = User.where(email: user.email).first
    #id = user.id
    return user
  end
end
