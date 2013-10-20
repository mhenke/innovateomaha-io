class StaticPagesController < ApplicationController

  def construction
    @construction_page = true
  end
  def home
    @home_page = true
  end
  def about
    add_crumb 'About'
  end
  def contact
    add_crumb 'Contact'
  end
  def blog
    add_crumb 'Blog'
  end
  def portfolio
    add_crumb 'Portfolio'
  end
  def register
  end
end
