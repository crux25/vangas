module ApplicationHelper
  
  # Returns page custom title if title (argument) was provided else return default title.
  def full_title(title = "")
      default_title = "ACES Uniport"
    if title != ""
      return "#{title} | #{default_title}"
    else
      return default_title
    end
  end
end
