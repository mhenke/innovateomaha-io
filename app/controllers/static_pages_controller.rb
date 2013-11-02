class StaticPagesController < ApplicationController

  before_filter :create_newsletter
 
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
    @contact = Contact.new()
  end
  def email
    add_crumb 'Contact'

    @contact = Contact.new(params[:contact])
    if @contact.valid?
      render :email
    else
      render :contact
    end
  end
  def blog
    add_crumb 'Blog'
  end
  def portfolio
    add_crumb 'Portfolio'
  end
  def register
  end

    private
 
    def create_newsletter
     @newsletter = Newsletter.new()
    end
end
