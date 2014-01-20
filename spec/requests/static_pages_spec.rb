require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "My-IMDb" }

  describe "Home page" do
  	it "should have the content 'My-IMDb'" do
  		visit '/static_pages/home'
  		expect(page).to have_content('My-IMDb')
  	end

  	it "should have the title 'Home'" do
  		visit '/static_pages/home'
  		expect(page).to have_title("#{base_title} | Home")
  	end
  end

  describe "About page" do
  	it "should have the content 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "should have the title 'About'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About")
  	end
  end
end
