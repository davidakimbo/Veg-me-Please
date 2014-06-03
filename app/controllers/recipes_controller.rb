class RecipesController < ApplicationController

  def index
     @user = current_user
      choice_quick = params[:choice_quick]
      sweet_savory = params[:sweet_savory]
      preferred_veggie = params[:preferred_veggie]
      choice_protein = params[:choice_protein]
      allergies = params[:allergies]

      @results = Recipe.recipe_search(choice_quick, sweet_savory, preferred_veggie, choice_protein, allergies)
  end

  def search
  end

  def create
    @user = current_user
    @recipe = Recipe.create(params)
    redirect_to '/index'
  end

end
