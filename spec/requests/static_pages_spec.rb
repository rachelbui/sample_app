require 'spec_helper'

describe "Static pages" do
let(:page_title) {"Ruby on Rails Tutorial Sample App "}

  describe "Home Page" do
  	it "should have the content 'Sample App' " do
  		visit '/static_pages/home'
  		expect(page).to have_content('Sample App')
  		expect(page).to have_title(page_title+"| Home")
  	end
  end

  describe "Help page" do
  	it "should have the content 'Help' " do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  		expect(page).to have_title(page_title+"| Help")
  	end
  end

  describe "About page" do
  	it "should have the content 'About Us' " do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  		expect(page).to have_title(page_title+"| About Us")
  	end
  end

  describe "Contact page" do
  	it "should have the title 'Contact' " do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  	end
  end
end

