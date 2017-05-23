class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @posts = Post.all
    @categories = Category.all
    @minimum_length = Post.validators_on(:title ).first.options[:minimum]
    @maximum_length = Post.validators_on(:body ).first.options[:maximum]
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
    if post.save
      redirect_to :new_post
    else
      flash[:notice] = "글자 수"
      redirect_to :new_post
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :title, :body, :category_id)
  end
end