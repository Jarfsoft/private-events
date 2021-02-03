class UsersController < ApplicationController
  include Devise::Controllers::Helpers
  helper_method :current_user

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'Account and all associated events successfully deleted.'
    redirect_to root_url
  end

  def create
    @user = User.new(user_params)
    @user.password_confirmation = params[:user][:password]
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit; end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
