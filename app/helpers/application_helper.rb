module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "The Maverick Saloon"
    if t('.title').nil?
      base_title
    else
      "#{base_title} | #{t('.title')}"
    end
  end

  # hide shopping cart if empty
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end
