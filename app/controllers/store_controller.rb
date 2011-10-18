class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
  end
  
  def store
    @title = "Country Store"
  end

end
