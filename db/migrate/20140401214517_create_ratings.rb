class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :users
      t.references :recipes
      t.integer :user_rating
    end
  end
end
