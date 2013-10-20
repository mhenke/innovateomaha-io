class ApplicationController < ActionController::Base

  add_crumb("Home") { |instance| instance.send :root_url }

  protect_from_forgery

end
