class AddRecipeUsersRemoveRatings < ActiveRecord::Migration
  def change
    change_table "recipes" do |t|
      t.rename :rating, :total_rating
    end

    change_table "users" do |t|
      t.rename :name, :first_name
      t.string :last_name
    end

  end
end
