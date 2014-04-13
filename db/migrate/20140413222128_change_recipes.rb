class ChangeRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.references :users
    end
  end
end
