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
    @created_events = current_user.events
    @past_events = current_user.events.past_events
    @upcoming_events = current_user.events.upcoming_events
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
      redirect_to events_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to 'show'
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
