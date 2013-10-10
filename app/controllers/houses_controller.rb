class HousesController < ApplicationController
  def view
    @house = House.find(params[:id])
  end

  def search
    @houses = House.all
  end

end