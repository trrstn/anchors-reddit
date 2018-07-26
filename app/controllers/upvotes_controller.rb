class UpvotesController < ApplicationController
  before_action :find_parent, only: [:create,:destroy]
  before_action :authorize

  def create
    @upvote = current_user.upvotes.create post: @upvote_parent
    redirect_to request.referrer

  end

  def destroy
    # @upvote.destroy = Post.find(params[:post_id])
    # @upvote_parent.upvotes.destroy
    @upvote = Upvote.find params[:id]
    @upvote.destroy
    redirect_to request.referrer
  end

  private

  def find_parent
    @upvote_parent = Post.find_by_id(params[:post_id])

  end
end
