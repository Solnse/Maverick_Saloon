class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 8, scale: 2
      t.string :img_url
      t.timestamps
    end
  end
end
