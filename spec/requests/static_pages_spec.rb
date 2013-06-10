  
  require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Final Project'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Final Project')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Manos Pappas Webtool App Final Project")
    end
	
	it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Manos Pappas Webtool App Final Project | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Manos Pappas Webtool App Final Project | About Us")
    end
  end
end