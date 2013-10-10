class StaticPagesController < ApplicationController
  def home
    # index
  end

  def about
  end

  def search
    # default search page
    @houses = House.all
  end
end
