require 'spec_helper'

describe "Static Pages" do
 
	describe "Construction Page" do

		it "should have the content 'Our Website is Under Construction'" do
			visit '/static_pages/construction' 
			page.should have_content('Our Website is Under Construction')
		end

		it "should have correct title" do
			visit '/static_pages/construction' 
			page.should have_selector('title', :text => "InnovateOmaha:: Construction")
		end

	end

	describe "Home Page" do

		it "should have correct title" do
			visit '/static_pages/home' 
			page.should have_selector('title', :text => "InnovateOmaha:: Home")
		end
		
	end

	describe "About Us Page" do

		it "should have correct title" do
			visit '/static_pages/about' 
			page.should have_selector('title', :text => "InnovateOmaha:: About Us")
		end
		
	end

	describe "Contact Page" do
		
		it "should have the content 'We love to stay in touch'" do
			visit '/static_pages/contact' 
			page.should have_content('We love to stay in touch')
		end

		it "should have correct title" do
			visit '/static_pages/contact' 
			page.should have_selector('title', :text => "InnovateOmaha:: Contact")
		end
		
	end

	describe "Blog Page" do

		it "should have the content 'Welcome to our blog'" do
			visit '/static_pages/blog' 
			page.should have_content('Welcome to our blog')
		end

		it "should have correct title" do
			visit '/static_pages/blog' 
			page.should have_selector('title', :text => "InnovateOmaha:: Blog")
		end
		
	end

	describe "Portfolio Page" do
		
		it "should have the content 'Run Lola, Run!'" do
			visit '/static_pages/portfolio' 
			page.should have_content('Run Lola, Run!')
		end

		it "should have correct title" do
			visit '/static_pages/portfolio' 
			page.should have_selector('title', :text => "InnovateOmaha:: Portfolio")
		end
		
	end

	describe "Register Page" do
		
		it "should have the content 'Register with Us'" do
			visit '/static_pages/register' 
			page.should have_content('Register with Us')
		end

		it "should have correct title" do
			visit '/static_pages/register' 
			page.should have_selector('title', :text => "InnovateOmaha:: Register")
		end
		
	end
end