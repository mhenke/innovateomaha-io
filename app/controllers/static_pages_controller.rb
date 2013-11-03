class StaticPagesController < ApplicationController

  def construction
    render layout: "construction"
  end
  def home
     render layout: "home"
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
      UserMailer.contact_email(@contact)
      render :thank_you
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
      UserMailer.newsletter_email(@newsletter).deliver
      render :newsletter
    else
      render :newsletter_fail
    end
  end

end
