class PagesController < ApplicationController
  def home
    @title = "Welcome to Obipost."
  end

  def contact
		@title = "Contact"
  end

  def about
    @title = "About"
  end

  def faq
    @title = "FAQ"
  end

end
