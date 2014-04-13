class RecipesController < ApplicationController

  def index
  end

  def favorite
    @user = current_user
    Recipe.create({
      name: => params[:name],
      url: => params[:url],
      img_url: => params[:img_url],
      # user_id: => current_user
      })
  end


  def show
  end

  def new
  end

  def create

  end

  def edit

  end

  def update

  end

end
