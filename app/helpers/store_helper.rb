module StoreHelper

  # Return a title on a per-page basis.
  def title
    base_title = "The Maverick Saloon"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
