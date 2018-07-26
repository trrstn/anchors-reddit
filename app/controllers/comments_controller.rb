
class CommentsController < ApplicationController
  before_action :find_parent
  before_action :authorize

  def new
    @comment = Comment.new
  end

  def create

    if params[:comment_id].present?
      @comment = @comment_parent.comments.create comment_params
    else
      @comment = @post_parent.comments.create comment_params
    end

    if @comment.save
      redirect_to request.referrer
    else
      redirect_to '/posts', notice: 'No comment 4 u!'
    end

  end

  def destroy
    # if @comment_parent.nil?
    #   # byebug
    #   @comment = @post_parent.comments.find params[:id]
    # elsif !@comment_parent.nil?
    #   byebug
    #   @comment = @comment_parent.find params[:id]
    # end
      @comment = Comment.find params[:id]
      @comment.destroy
    redirect_to request.referrer
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :comment_id, :post_id, :user_id)
  end

  def find_parent
    @post_parent = Post.find_by_id(params[:post_id])
    # if params[:post_id]
    @comment_parent = Comment.find_by_id(params[:comment_id])
    # if params[:comment_id]
  end

end
