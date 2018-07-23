class UpvotesController < ApplicationController
  before_action :authorize

  def create
    @upvote = Upvote.create upvote_params
    if @upvote.save
      redirect_to '/users'
    else
      redirect_to '/landing'
    end
  end

  def destroy
    @upvote.destroy = Post.find(params[:post_id])
    # redirect_to request_referrer
  end

  private

  def upvote_params
    params.require(:upvote).permit(:user, :post)
  end
end
