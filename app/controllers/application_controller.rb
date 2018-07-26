class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

  def admin_authorize
    redirect_to '/landing' unless current_user.try(:admin?)
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

end
