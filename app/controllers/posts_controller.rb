class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, success: "掲示板を作成しました。"
    else
      flash.now[:danger] = "掲示板の作成に失敗しました。"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:temple_name, :location, :comment, :post_image, :post_image_cache)
  end
end
