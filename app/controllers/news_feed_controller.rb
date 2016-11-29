class NewsFeedController < ApplicationController
    def index
        @post = Post.new
        @posts = Post.all
        @like = Like.new
        users_folow = Follow.where(user_id: current_user.id)
        @follows_posts = []
      @posts.each do |post|
          if users_folow.include?(post.user_id) || post.user_id == current_user.id
              @follows_posts.push(post)
          end
      end
    end
end
