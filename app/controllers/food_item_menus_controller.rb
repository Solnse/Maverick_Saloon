class FoodItemMenusController < ApplicationController
  skip_before_filter :authorize

  def index  
    @foods = FoodItem.find(:all).group_by { |food| food.category }
  end
end
  