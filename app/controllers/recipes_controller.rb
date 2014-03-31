class RecipesController < ApplicationController

  def index
    @a = Recipe.testing_queries
  end

  def show
    #Pass the acquired params back to the recipe model for calculating!

    @b = Recipe.recipe_search(
      params[:choice_simple],
      params[:sweet_savory],
      params[:preffered_veggie],
      params[:allergies])
  binding.pry
  end

end
