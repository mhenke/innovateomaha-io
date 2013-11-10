class ApplicationController < ActionController::Base
  before_filter :create_newsletter
  
  add_crumb("Home", "/")

  protect_from_forgery

  private
 
    def create_newsletter
     @newsletter = Newsletter.new()
    end

end
