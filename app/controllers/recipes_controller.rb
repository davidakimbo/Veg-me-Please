class RecipesController < ApplicationController

  def index
  end

  def show  #Pass the acquired params back to the recipe model for calculating!
      @user = current_user
      choice_quick = params[:choice_quick]
      sweet_savory = params[:sweet_savory]
      preferred_veggie = params[:preferred_veggie]
      allergies = params[:allergies]

      @results = Recipe.recipe_search(choice_quick, sweet_savory, preferred_veggie, allergies)

  end

  def favorite
    @user = current_user
    new_favorite = Recipe.create({
        :name => params[:name],
        :url => params[:url],
        :img_url => params[:img_url]
      })

  end
end
