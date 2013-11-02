require 'spec_helper'

describe 'Newsletter Subscription with email address', :js => true do
	it 'should email user when requesting newsletter' do
		user = FactoryGirl.create(:user)
		visit '/static_pages/construction'
		fill_in 'newsletter_email', :with => user.email
		click_button 'Subscribe'
    	page.should have_content('Thanks for signing up to our newsletter')
    	last_email.to.should include(user.email)
    	last_email.body.encoded.should match('You have successfully signed up to example.com')
	end

  it 'should not allow blank email address' do
    visit '/static_pages/construction'
    click_button 'Subscribe'
    page.should have_content('Invalid entry')
  end

  it 'should not show error multiple times' do
    visit '/static_pages/construction'
    click_button 'Subscribe'
    click_button 'Subscribe'
    page.should have_selector('small#newsletter_error', :count => 1)
  end

  it 'should not allow incorrect email address' do
    user = FactoryGirl.create(:user)
    visit '/static_pages/construction'
    fill_in 'newsletter_email', :with => user.login
    click_button 'Subscribe'
    page.should have_content('Invalid entry')
  end

end