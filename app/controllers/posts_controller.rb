class PostsController < ApplicationController
  def index
  end

  def new
  end

  def create
   # render plain: params[:post].inspect
   @post = Post.new(post_params)
   @post.save
   redirect_to @post
  end

  def edit
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end

  private 
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
