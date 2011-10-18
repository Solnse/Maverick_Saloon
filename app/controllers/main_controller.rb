class MainController < ApplicationController
  skip_before_filter :authorize
  
  def index
  end

  def hayloft
    @title = "The Hayloft Grill"
  end

  def merchandise
    @title = "The Country Store"
  end

  def entertainment
    @title = "Entertainment and Events"
  end

  def about
    @title = "About Us/Contact"
  end
  
  def store
    @title = "General Store"
  end

end
