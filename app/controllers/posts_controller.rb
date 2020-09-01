class PostsController < ApplicationController

  def index
    @post = Post.all.page(params[:page])
  end

  def show
    @post = Post.all.page(params[:page]).per(10)
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
      redirect_to post_path(current_user.id)
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
