class LandingController < ApplicationController

  def index
    @post = Post.all
  end

end
