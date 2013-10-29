require 'spec_helper'

describe "Newsletter Subscription", :js => true do
	it "should email user when requesting newsletter" do
		user = FactoryGirl.create(:user)
		visit '/static_pages/construction'
		fill_in "users_newsletter_title", :with => user.email
		click_button "Subscribe"
    	page.should have_content('Thanks for signing up to our newsletter')
	end
end

