require 'spec_helper'

describe 'Contact email', :js => true do
  it 'should email website when submiting contact form' do
    contact = FactoryGirl.build(:contact)
    visit '/static_pages/contact'
    fill_in 'contact_name', :with => contact.name
    fill_in 'contact_email', :with => contact.email
    fill_in 'contact_subject', :with => contact.subject
    fill_in 'contact_message', :with => contact.message
    click_button 'Submit'
      # last_email.from.should include(contact.email)
      # last_email.body.encoded.should match(contact.message)
      pending('need to finish')
  end

  it 'should not allow blank inputs' do
    visit '/static_pages/contact'
    click_button 'Submit'
    page.should have_content('Please review the problems below:')
    page.should have_content('We love to stay in touch')
    page.should have_selector('title', :text => "OpenNebraska:: Contact")
    page.find('#contact_nav')['active']
    page.should have_xpath("//li[@class='current']//span[contains(.,'Contact')]")
  end
end