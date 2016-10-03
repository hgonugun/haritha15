class PostsController < ApplicationController

def index
 @posts =post.all
end

def new
 @post=post.new
end

def create
 @post=post.create(post_params)
 redirect_to posts_path
end



private

def post_params
  params.require(:post).permit(:image. :caption)
end
end
