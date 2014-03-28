class RecipesController < ApplicationController

  def index
    @a = Recipe.request_veggies
  end

end
