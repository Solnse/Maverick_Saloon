class CreateFoodItemMenus < ActiveRecord::Migration
  def change
    create_table :food_item_menus do |t|
      t.integer :food_item_id
      t.integer :menu_id
      t.timestamps
    end
  end
end
