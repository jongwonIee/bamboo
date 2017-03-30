class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @posts = Post.all
  end

  def create
    post = Post.new(post_params)
    post.save
    # redirect_to :main
    # redirect_to :new_post
    redirect_to :back
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
