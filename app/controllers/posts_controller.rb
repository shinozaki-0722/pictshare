class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  # 画像投稿
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(current_user.id)
    else
      # render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path(current_user.id)
  end

  private
  def post_params
    params.require(:post).permit(:image).merge(user_id: current_user.id)
  end
end
