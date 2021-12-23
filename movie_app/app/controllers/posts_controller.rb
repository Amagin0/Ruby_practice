class PostsController < ApplicationController
  before_action :set_post, only: %i(show destroy)

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: '投稿しました'
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: '削除しました'
  end
  private

    def post_params
      params.require(:post).permit(:title, :body, :video)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end