class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @posts = Post.all
    @minimum_length = Post.validators_on( :title ).first.options[:minimum]
    @maximum_length = Post.validators_on( :body ).first.options[:maximum]
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
