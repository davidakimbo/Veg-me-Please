class Recipe < ActiveRecord::Base

  def self.request_veggies
    @veg_query = HTTParty.get('http://api.yummly.com/v1/api/recipes?_app_id=9a96c9a6&_app_key=4e268421d281dd0f9ab5c56532f44642&q=onion+soup')
    return @veg_query["attribution"]
  end

end
