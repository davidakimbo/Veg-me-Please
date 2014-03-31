class RecipesController < ApplicationController

  def index
    @test_a = Recipe.testing_queries
  end

  def show  #Pass the acquired params back to the recipe model for calculating!
      choice_simple = params[:choice_simple]
      sweet_savory = params[:sweet_savory]
      preferred_veggie = params[:preferred_veggie]
      allergies = params[:allergies]
      @results = Recipe.recipe_search(choice_simple, sweet_savory, preferred_veggie, allergies)
  end

end
