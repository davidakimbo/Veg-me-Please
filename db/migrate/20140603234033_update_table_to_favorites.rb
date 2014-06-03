class UpdateTableToFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :recipe
      t.integer :rating
    end

    drop_table :recipes_users

  end
end
