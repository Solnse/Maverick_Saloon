class FoodItem < ActiveRecord::Base
  has_many :menus, :through => :food_item_menus
  has_many :food_item_menus
end
