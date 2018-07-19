
class CommentsController < ApplicationController
  before_action :find_parent

  def new
    @comment = Comment.new
  end

  def create

    if comment_params[:comment_id]
      @comment = @comment_parent.comments.create comment_params
    elsif comment_params[:post_id]
      @comment = @post_parent.comments.create comment_params
    end

    if @comment.save
      redirect_to request.referrer, notice: 'Your comment was successfully posted!'
    else
      redirect_to '/posts', notice: 'No comment 4 u!'
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:body, :comment_id, :post_id, :user_id)
  end

  def find_parent
    @post_parent = Post.find_by_id(params[:post_id])
    @comment_parent = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
  end

end
