class RecipesController < ApplicationController

  def index
    @a = Recipe.testing_queries
  end

  def new
    #Pass the acquired params back to the recipe model for calculating!
    binding.pry
    Recipe.recipe_search(params[:choice_simple], params[:sweet_savory], params[:preffered_veggie], params[:allergies])
  end

  def show

  end

end
