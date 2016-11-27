class NewsFeedController < ApplicationController
    def index
        @post = Post.new
        @posts = Post.all
        @like = Like.new
    end
end
