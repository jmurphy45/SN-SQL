module FollowsHelper
  def find_user(user)
    user = User.where(email: user.email).first
    #id = user.id
    return user.id
  end
  def follow_rec(current_user, follows)
    follow = Follow.where('user_id = ? AND follows = ?',current_user.id,follows.id).first
    return follow.id
  end
  def gen_name(f,l)
    return f + " " + l
  end
end
