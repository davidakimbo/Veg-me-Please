class Recipe < ActiveRecord::Base

  def self.testing_queries
    #This class method searches for onion soup recipes, returns whats in the matches hash
    @veg_query = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q=broccoli")
    return @veg_query["matches"][0]["ingredients"]
  end



  def self.recipe_search(choice_simple, sweet_savory, preffered_veggie, allergies)
    #This is where the magic happens.
    #Once we get everything the user wants, we pass that shiz here yo!
    # if choice_simple == "true"
    # end
    # params[:sweet_savory]
    # params[:allergies].each do |allergies|
    # allergies = &allowedAllergy[]=396^Dairy-Free&
    # end
    # search_parameters = []

    @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q=#{preffered_veggie}") #Insert user params here
    return @recipe["matches"][0]
  end

  def self.recipe_skim() #This will skim the response and trim it with more parameters


  end

end

 # @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q")
