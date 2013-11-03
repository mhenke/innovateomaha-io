require 'spec_helper'

describe 'should email when filled out', :js => true do
  it 'should email user when requesting newsletter' do
    user = FactoryGirl.create(:user)
    visit '/static_pages/contact'
    fill_in 'contact_name', :with => user.name
    fill_in 'contact_email', :with => user.email
    fill_in 'contact_subject', :with => 'Testing Subject'
    fill_in 'contact_message', :with => 'This is testing the message content'
    click_button 'Submit'
      last_email.from.should include(user.email)
      last_email.body.encoded.should match('You have successfully signed up to example.com')
  end

  it 'should not allow blank inputs' do
    user = FactoryGirl.create(:user)
    visit '/static_pages/contact'
    click_button 'Submit'
    page.should have_content('Please review the problems below:')
    page.should have_content('We love to stay in touch')
    page.should have_selector('title', :text => "InnovateOmaha:: Contact")
    page.find('#contact_nav')['active']
    page.should have_xpath("//li[@class='current']//span[contains(.,'Contact')]")
  end
end