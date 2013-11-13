require 'spec_helper'

describe "Exceptions" do
  describe "404 Page" do
    it "should have the content 'Oops...are you lost?'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/errors/404'
      page.should have_content('Oops...are you lost?')
      page.should have_selector('title', :text => "OpenNebraska:: 404")
      page.should have_xpath("//li[@class='current']//span[contains(.,'404')]")
    end
  end

  describe "422 Page" do
    it "should have the content 'Oops...are you lost?'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/errors/422'
      page.should have_content('Oops...are you lost?')
      page.should have_selector('title', :text => "OpenNebraska:: 422")
      page.should have_xpath("//li[@class='current']//span[contains(.,'422')]")
    end
  end

  describe "500 Page" do
    it "should have the content 'Oops...are you lost?'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/errors/500'
      page.should have_content('Oops...are you lost?')
      page.should have_selector('title', :text => "OpenNebraska:: 500")
      page.should have_xpath("//li[@class='current']//span[contains(.,'500')]")
    end
  end
end