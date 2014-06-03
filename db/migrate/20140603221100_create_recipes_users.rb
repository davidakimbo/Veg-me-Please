class CreateRecipesUsers < ActiveRecord::Migration
  def change
    create_join_table :recipes, :users do |t|
      t.integer :rating
    end
  end
end
