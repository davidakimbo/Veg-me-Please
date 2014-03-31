class Recipe < ActiveRecord::Base

  def self.testing_queries
    #This class method searches for onion soup recipes, returns whats in the matches hash
    @veg_query = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q=taco")
    return @veg_query["matches"][0]["ingredients"]
  end


  def self.recipe_search(choice_simple, sweet_savory, preferred_veggie, allergies)

    if choice_simple == "true"
      choice_simple = "&maxTotalTimeInSeconds=900"
    else
      choice_simple = "&maxTotalTimeInSeconds=5400"
    end

    if sweet_savory == "sweet"
      sweet_savory = "&flavor.sweet.min=0.4&flavor.sweet.max=1&"
    elsif sweet_savory == "meaty"
      sweet_savory = "&flavor.meaty.min=0.4&flavor.meaty.max=1&"
    end


    if allergies
      allergies.each do |allergy|

    else
      end

    binding.pry

    @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&requirePictures=true&allowedDiet[]=387&q=#{preferred_veggie}#{choice_simple}#{sweet_savory}") #Insert user params here
  end

  def self.recipe_skim() #This will skim the response and trim it with more parameters


  end

end

 # @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q")






    #This is where the magic happens.
    #Once we get everything the user wants, we pass that shiz here yo!
    # if choice_simple == "true"
    # end
    # params[:sweet_savory]
    # params[:allergies].each do |allergies|
    # allergies = &allowedAllergy[]=396^Dairy-Free&
    # end
    # search_parameters = []
