module ApplicationHelper
  def full_title(page_title='')
    base_title = "Connect"

    return base_title if page_title.empty?
    return base_title + " | " + page_title if !page_title.empty?
  end
end
