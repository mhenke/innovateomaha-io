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
    add_crumb 'Contact'

    @contact = Contact.new(params[:contact])
    @mail = UserMailer.contact_email(@contact)

    if @contact.valid? && @mail.deliver
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

  def newsletter
    @newsletter = Newsletter.new(params[:newsletter])
     if @newsletter.valid?
      UserMailer.welcome_email(@newsletter).deliver
      render :newsletter
    else
      render :newsletter_fail
    end
  end

end
