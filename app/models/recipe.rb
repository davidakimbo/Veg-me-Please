class Recipe < ActiveRecord::Base
  has_many :ratings

  def self.recipe_search(choice_quick, sweet_savory, preferred_veggie, allergies)

    if choice_quick == "true"
      choice_quick = "900"
    else
      choice_quick = "5400"
    end

    if sweet_savory == "sweet"
      sweet_savory = "&flavor.meaty.max=0.3&flavor.sweet.min=0.4"
    else
      sweet_savory = "&flavor.meaty.min=0.4&flavor.sweet.max=0.3"
    end

    if allergies
     allergy = allergies.values.join
     HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&requirePictures=true&q=#{preferred_veggie}&maxTotalTimeInSeconds=#{choice_quick}#{sweet_savory}#{allergy}")
   else
    recipe_call(choice_quick, sweet_savory, preferred_veggie)
   end

  end

  def self.recipe_call(choice_quick, sweet_savory, preferred_veggie)
    @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&requirePictures=true&allowedDiet[]=387&q=#{preferred_veggie}&maxTotalTimeInSeconds=#{choice_quick}#{sweet_savory}")
  end


  def self.favorite
    @recipe = Recipe.create({

      })

  end

end

 ################## The base URL with my API ID % Key
 # @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q")
