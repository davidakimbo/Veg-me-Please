class RecipesController < ApplicationController

  def index
  end

  def show  #Pass the acquired params back to the recipe model for calculating!
      choice_quick = params[:choice_quick]
      sweet_savory = params[:sweet_savory]
      preferred_veggie = params[:preferred_veggie]
      allergies = params[:allergies]
      @user = current_user
      @results = Recipe.recipe_search(choice_quick, sweet_savory, preferred_veggie, allergies)
  end

  def favorite
    @user = current_user
    binding.pry

    new_favorite = Recipe.create({
        :name => params[:name],
        :url => params[:url],
        :img_url => params[:img_url]
      })
    binding.pry
  end
end
