module FollowsHelper

  def follow_rec(current_user, follows)
    follow = Follow.where('user_id = ? AND follows = ?',current_user.id,follows.id).first
    return follow.id
  end

  def user_follows(current_user, user)
       return Follow.find_by(user_id: current_user, follows: user)
  end
end
