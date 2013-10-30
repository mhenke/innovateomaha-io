require 'spec_helper'

describe "Newsletter Subscription", :js => true do
	it "should email user when requesting newsletter" do
		user = FactoryGirl.create(:user)
		visit '/static_pages/construction'
		fill_in "users_newsletter_email", :with => user.email
		click_button "Subscribe"
    	page.should have_content('Thanks for signing up to our newsletter')
    	last_email.to.should include(user.email)
    	last_email.body.encoded.should match('You have successfully signed up to example.com')
	end
end