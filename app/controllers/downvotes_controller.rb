class DownvotesController < ApplicationController
  before_action :find_parent, only: [:create, :destroy]
  before_action :authorize

  def create
    @downvote = current_user.downvotes.create post: @upvote_parent
    redirect_to request.referrer
  end
  def destroy
    @downvote = Downvote.find params[:id]
    @downvote.destroy
    redirect_to request.referrer
  end

  private

  def find_parent
    @upvote_parent = Post.find_by_id(params[:post_id])
  end
end
