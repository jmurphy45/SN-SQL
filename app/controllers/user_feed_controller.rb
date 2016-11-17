class UserFeedController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
    @follow_post = []
    @posts.each do |post|
      if current_user.follows(post.user) || post.user.user_id == curent_user.id
        @follow_post.push(post)
      end
    end
  end

end
