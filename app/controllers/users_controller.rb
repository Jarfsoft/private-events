class UsersController < ApplicationController
  include Devise::Controllers::Helpers
  helper_method :current_user

  def new
    @user = User.new
  end
  def index
    @user = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.destroy
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
  private

  def user_params
    params.require(:user).permit(:email, :password)
  end


end
