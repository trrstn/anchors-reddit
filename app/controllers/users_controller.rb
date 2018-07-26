class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :assign_admin]
  before_action :admin_authorize, only: [:index,:show,:edit,:update,:destroy, :assign_admin]

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
      flash[:error_item] = @item
      redirect_to signup_path
    end
  end

  def update
    @user.update user_params
    redirect_to users_path
  end

  def assign_admin
    byebug
    @user.update_attribute(:admin, !@user.admin)
    redirect_to request.referrer
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:user_name,:password,:password_confirmation,:email,:posts)
  end

end
