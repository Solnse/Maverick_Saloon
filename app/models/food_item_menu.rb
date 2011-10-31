class FoodItemMenu < ActiveRecord::Base
  belongs_to :menus
  belongs_to :food_items
end
