class AddCategoryToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :category, :string
  end
end
