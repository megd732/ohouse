require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "should have the content 'o.house'" do
      visit '/static_pages/home'
      page.should have_content('o.house')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "o.house")
    end
  end

  describe "About page" do
    it "should have the content 'About OHouse'" do
      visit '/static_pages/about'
      page.should have_content('About OHouse')
    end
  end
end