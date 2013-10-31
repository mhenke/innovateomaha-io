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
     @contact = Contact.new()
  end
  def email
   
    @contact = Contact.new(params[:static_pages_email])
    UserMailer.contact_email(@contact).deliver
    if @contact.deliver
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
end
