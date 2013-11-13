class ApplicationController < ActionController::Base
  before_filter :create_newsletter, :recent_posts, :all_tags
 
  add_crumb("Home", "/")

  protect_from_forgery

  private
 
    def create_newsletter
     @newsletter = Newsletter.new()
    end

    def recent_posts
      @recent_posts = Monologue::Post.published.limit(3)
    end

    def all_tags
      @tags = Monologue::Tag.order("name").select{|t| t.frequency>0}
      #could use minmax here but it's only supported with ruby > 1.9'
      @tags_frequency_min = @tags.map{|t| t.frequency}.min
      @tags_frequency_max = @tags.map{|t| t.frequency}.max
    end

end
