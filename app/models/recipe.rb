class Recipe < ActiveRecord::Base
has_many :ratings
  def self.recipe_search(choice_quick, sweet_savory, preferred_veggie, allergies)

    if choice_quick == "true"
      choice_quick = "&maxTotalTimeInSeconds=900"
    else
      choice_quick = "&maxTotalTimeInSeconds=5400"
    end

    if sweet_savory == "sweet"
      sweet_savory = "&flavor.sweet.min=0.4&flavor.sweet.max=1"
    else
      sweet_savory = "&flavor.meaty.min=0.4&flavor.meaty.max=1"
    end
    @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&requirePictures=true&allowedDiet[]=387&q=#{preferred_veggie}#{choice_quick}#{sweet_savory}") #Insert user params here

  end

  # def self.favorite
  #   @recipe = Recipe.create({

  #     })

  # end

end

 # @recipe = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q")


    #This is where the magic happens.
    #Once we get everything the user wants, we pass that shiz here yo!
    # if choice_quick == "true"
    # end
    # params[:sweet_savory]
    # params[:allergies].each do |allergies|
    # allergies = &allowedAllergy[]=396^Dairy-Free&
    # end
    # search_parameters = []

#     if allergies
#       allergies.each do |allergy|
#         # each_allergy2 = each_allergy.join("&allowedAllergy[]=")
#         puts allergy
#       end
# # search_params = params[:search].split(" ").join("+")
# else
#  each_allergy = ""
# end
