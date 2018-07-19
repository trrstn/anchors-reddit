class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_user_name(params[:user_name])

    if(user && user.authenticate(params[:password]))
      session[:user_id] = user.id
      redirect_to landing_path
    else
      flash[:notice] = "Wrong input, try again!"
      redirect_to login_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to landing_path
  end

end
