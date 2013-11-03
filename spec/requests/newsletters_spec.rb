require 'spec_helper'

describe 'Newsletter Subscription', :js => true do
	it 'should email contact when requesting newsletter' do
		contact = FactoryGirl.build(:contact)
		visit '/static_pages/construction'
		fill_in 'newsletter_email', :with => contact.email
		click_button 'Subscribe'
    	page.should have_content('Thanks for signing up to our newsletter')
    	last_email.to.should include(contact.email)
      pending('need to finish')
    	# last_email.body.encoded.should match('You have successfully signed up to example.com')
	end

  it 'should not allow blank email and show error multiple times' do
    visit '/static_pages/construction'
    click_button 'Subscribe'
    page.should have_content('Invalid entry')
    click_button 'Subscribe'
    page.should have_selector('small#newsletter_error', :count => 1)
  end

  it 'should not allow incorrect email address' do
    contact = FactoryGirl.build(:contact)
    visit '/static_pages/construction'
    fill_in 'newsletter_email', :with => contact.name
    click_button 'Subscribe'
    page.should have_content('Invalid entry')
  end

end