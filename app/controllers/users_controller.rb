class UsersController < ApplicationController

  def index
    @user = current_user
    @favorites = Favorite.where(user_id: @user)
  end

  def new
    redirect_to root_path if current_user
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to '/'
  end

  private
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
