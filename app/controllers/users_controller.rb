class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :admin_authorize, only: [:index,:show,:destroy, :assign_admin]
  before_action :authorize, only: [:index,:show,:edit,:update]
  # before_action :settings_authorize(User.find(params[:id])), only: [:edit, :update]
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to landing_path
    else
      flash[:notice] = "Wrong input, try again!"
      redirect_to signup_path
    end
  end

  def update
    current_user.update(user_params)
    redirect_to users_path
  end

  def assign_admin
    @user = User.find(params[:id])
    @user.update_attribute(:admin, !@user.admin)
    redirect_to request.referrer
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:user_name,:password,:password_confirmation,:email,:posts)
  end

end
