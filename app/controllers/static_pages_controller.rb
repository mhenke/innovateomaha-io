class StaticPagesController < ApplicationController
  def construction
    @construction_page = true;
  end
  def home
    @home_page = true;
  end
  def about
  end
  def contact
  end
  def blog
  end
  def portfolio
  end
  def register
  end
end
