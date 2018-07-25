class LandingController < ApplicationController

  def index
    @posts = Post.all

  end

end
