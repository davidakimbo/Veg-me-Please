class RecipesController < ApplicationController

  def index
    @a = Recipe.testing_queries
  end

  def new
    #Pass the acquired params back to the recipe model for calculating!
    binding.pry
  end

end
