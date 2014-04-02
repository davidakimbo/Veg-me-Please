class UsersController < ApplicationController

  def index

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
   params.require(:user).permit(:name, :email, :password, :password_confirmation)
 end


end
