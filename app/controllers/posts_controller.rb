class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:new, :create, :edit,:update,:destroy]

  def show
    # byebug
    @link = MetaInspector.new(@post.link) if @post.link
    # @link = MetaInspector.new(@post.link)
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create post_params.merge({user: current_user})
    redirect_to landing_path
  end

  def update
    @post.update post_params
    redirect_to posts_path
  end

  def destroy
    @post.destroy
    redirect_to landing_path
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :user_id, :image, :link)
    end

end
