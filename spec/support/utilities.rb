def full_title(page_title)
  base_title = "Manos Pappas Webtool App Final Project"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end