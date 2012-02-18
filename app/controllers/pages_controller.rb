class PagesController < ApplicationController
  def home
    @title = 'Home'
  end
    @title = 'Contact'
  def contact
  end

  def about
    @title = 'About'
  end

end
