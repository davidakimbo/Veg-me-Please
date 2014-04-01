class UsersController < ApplicationController

  def index

  end

  def create
    new_user = User.create(name: params[:name],
                           email: params[:email],
                           password: params[:password],
      )
  end

  private
  def user_params
   params.require(:user).permit(:name,

 end


end
