class RecipesController < ApplicationController

  def index #Displays the query results
     @user = current_user
      choice_quick = params[:choice_quick]
      sweet_savory = params[:sweet_savory]
      preferred_veggie = params[:preferred_veggie]
      choice_protein = params[:choice_protein]
      allergies = params[:allergies]

      @results = Recipe.recipe_search(choice_quick, sweet_savory, preferred_veggie, choice_protein, allergies)
  end

  def search #Not much to see here
  end

  def create #Saving recipes to the database / Users account
    @user = current_user
    @recipe = Recipe.create(name: params[:name], url: params[:url], img_url: params[:img_url])
    @favorite = Favorite.create(recipe_id: @recipe.id, user_id: @user.id)
    redirect_to '/'
  end

  def destroy #Removing recipes saved in the users account


  end


end
