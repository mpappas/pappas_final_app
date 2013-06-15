def full_title(page_title)
  base_title = "Manos Pappas Webtool App Final Project"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
 end
 
 def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
  end