class StoreController < ApplicationController
  skip_before_filter :authorize
  
  def store
    @title = t('.layouts.application.store')
  end
 
  def index
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
    end
  end
end
