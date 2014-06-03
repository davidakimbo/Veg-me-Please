class Recipe < ActiveRecord::Base

has_many :recipe_users
has_many :users through :recipe_users

  def self.recipe_search(choice_quick, sweet_savory, preferred_veggie, choice_protein, allergies)

    if choice_quick == "true"
      choice_quick = "900"
    else
      choice_quick = "5400"
    end

    if sweet_savory == "sweet"
      sweet_savory = "flavor.meaty.max=0.3&flavor.sweet.min=0.4"
    else
      sweet_savory = "flavor.meaty.min=0.4&flavor.sweet.max=0.3"
    end

    if choice_protein == "yes"
      choice_protein = "nutrition.PROCNT.min=7"
    else
      choice_protein = "nutrition.PROCNT.min=0"
    end

    if allergies
     allergy = allergies.values.join.chomp
      HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=#{ENV["API_ID"]}&_app_key=#{ENV["API_KEY"]}&requirePictures=true&q=#{preferred_veggie}&maxTotalTimeInSeconds=#{choice_quick}&#{sweet_savory}&#{choice_protein}#{allergy}")
    else
      HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=#{ENV["API_ID"]}&_app_key=#{ENV["API_KEY"]}&requirePictures=true&q=#{preferred_veggie}&maxTotalTimeInSeconds=#{choice_quick}&#{sweet_savory}&#{choice_protein}")
    end

  end

end

 ################## The base URL with my API ID % Key
 # @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q")
