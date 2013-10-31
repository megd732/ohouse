class StaticPagesController < ApplicationController
  def home
    # index
  end

  def about
  end

  def search
    @houses = House.search(params[:search])
  end
end
