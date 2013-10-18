require 'spec_helper'

describe "Static Pages" do
 
	describe "Construction Page" do

		it "should have the content 'Sample App'" do

			visit '/static_pages/construction' 
			page.should have_content('Thanks for stopping by.')

		end
	
	end

end