class Menu < ActiveRecord::Base
  has_many :items, :through => :food_item_menus
  has_many :food_item_menus
end
