class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def search
    @houses = House.search(params[:street], params[:residents], params[:full], params[:twin], params[:laundry], params[:porch], params[:sun]) # houses per search query
    @streets = Set.new   # all streets (unique vals)
    House.all.each do |h|
      @streets.add(h.street)
    end
  end
end
